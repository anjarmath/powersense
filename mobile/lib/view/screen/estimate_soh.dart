import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powersense/core/connectivity/connectivity.dart';
import 'package:powersense/model/ai_model.dart';
import 'package:powersense/model/backend_payload.dart';
import 'package:powersense/model/payload_model.dart';
import 'package:powersense/view/component/app_bar.dart';
import 'package:powersense/view/component/drawer.dart';
import 'package:powersense/view/provider/model_provider.dart';
import 'package:powersense/view/screen/detail_screen.dart';
import 'package:powersense/view/util/colors.dart';
import 'package:powersense/view/util/text_style.dart';
import 'package:powersense/view_model/repository/prediction_repository.dart';

import '../component/button.dart';
import '../component/input_field.dart';

class EstimateSOHScreen extends ConsumerStatefulWidget {
  const EstimateSOHScreen({super.key});

  @override
  ConsumerState<EstimateSOHScreen> createState() => _EstimateSOHScreenState();
}

class _EstimateSOHScreenState extends ConsumerState<EstimateSOHScreen> {
  ConnectivityRepository connectivityRepository = ConnectivityRepositoryImpl();
  PredictionRepository predictionRepository = PredictionRepositoryImpl();

  final _formKey = GlobalKey<FormState>();
  TextEditingController capacityController = TextEditingController(text: '0');
  TextEditingController voltageMeasuredController =
      TextEditingController(text: '0');
  TextEditingController currentMeasuredController =
      TextEditingController(text: '0');
  TextEditingController temperatureController =
      TextEditingController(text: '0');
  TextEditingController currentLoadController =
      TextEditingController(text: '0');
  TextEditingController voltageLoadController =
      TextEditingController(text: '0');
  TextEditingController timeController = TextEditingController(text: '0');

  bool isLoading = false;

  final modelNames = <String>[];
  final modelChoices = <String>[];
  String choice = 'Loading...';

  @override
  void initState() {
    super.initState();
    getListOfModel();
  }

  void predictSoh() async {
    setState(() {
      isLoading = true;
    });
    final payload = PayloadModel(
        capacity: double.parse(capacityController.text),
        voltage_measured: double.parse(voltageMeasuredController.text),
        current_measured: double.parse(currentMeasuredController.text),
        temperature_measured: double.parse(temperatureController.text),
        current_load: double.parse(currentLoadController.text),
        voltage_load: double.parse(voltageLoadController.text),
        time: double.parse(timeController.text));

    if (modelNames.isNotEmpty || modelChoices.isNotEmpty) {
      final model = modelNames[modelChoices.indexOf(choice)];

      final backendPayload = BackendPayload(payload: payload, model: model);
      ref
          .read(modelStateNotifierProvider.notifier)
          .updatePayload(backendPayload);
      ref.read(modelStateNotifierProvider.notifier).updateModelName(choice);

      final response = await predictionRepository.predict(backendPayload);
      response.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Oops! error: $l"),
        ));
      }, (r) {
        ref
            .read(modelStateNotifierProvider.notifier)
            .updateSOH(r.soh.toStringAsFixed(4));
        ref.read(modelStateNotifierProvider.notifier).updateTime();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) =>
                DetailScreen(data: ref.read(modelStateNotifierProvider))));
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  void handleNoConnection() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text("Tidak ada koneksi!"),
          content: const Text(
              "Hubungkan ponsel dengan internet untuk menggunakan aplikasi"),
          actionsPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
            Row(
              children: [
                PowerButton(
                  flex: 1,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  text: const Text('Ok', style: btnStyle),
                  bgColor: PowerColor.dark,
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void getListOfModel() async {
    final isOnline = await connectivityRepository.isConnected();
    if (isOnline) {
      final modelRes = await predictionRepository.getAllModels();
      modelRes.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Gagal mendapatkan katalog model, err: $l')));
      }, (r) {
        if (r.isNotEmpty) {
          for (AiModel model in r) {
            setState(() {
              modelNames.add(model.model);
              modelChoices.add(model.desc);
              choice = modelChoices[0];
            });
          }
        }
      });
    } else {
      handleNoConnection();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PowerAppBar(isColored: false, isElevated: true),
      drawer: const PowerDrawer(indexSelected: 1),
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                children: [
                  PowerTextField(
                    label: 'Kapasitas',
                    isNumeric: true,
                    controller: capacityController,
                  ),
                  const SizedBox(height: 12),
                  PowerTextField(
                    label: 'Voltage Measured',
                    isNumeric: true,
                    controller: voltageMeasuredController,
                  ),
                  const SizedBox(height: 12),
                  PowerTextField(
                    label: 'Current Measured',
                    isNumeric: true,
                    controller: currentMeasuredController,
                  ),
                  const SizedBox(height: 12),
                  PowerTextField(
                    label: 'Temperature Measured',
                    isNumeric: true,
                    controller: temperatureController,
                  ),
                  const SizedBox(height: 12),
                  PowerTextField(
                    label: 'Current Load',
                    isNumeric: true,
                    controller: currentLoadController,
                  ),
                  const SizedBox(height: 12),
                  PowerTextField(
                    label: 'Voltage Load',
                    isNumeric: true,
                    controller: voltageLoadController,
                  ),
                  const SizedBox(height: 12),
                  PowerTextField(
                    label: 'Time',
                    isNumeric: true,
                    controller: timeController,
                  ),
                  const SizedBox(height: 6),
                  Divider(
                    color: PowerColor.dark,
                  ),
                  const SizedBox(height: 6),
                  PowerDropdown(
                    onChanged: (newValue) {
                      setState(() {
                        choice = newValue.toString();
                      });
                    },
                    initialChoice: choice,
                    modelChoices: modelChoices,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                PowerButton(
                  flex: 2,
                  bgColor: PowerColor.dark,
                  text: const Text('Reset', style: btnStyle),
                  onTap: () {
                    if (_formKey.currentState != null) {
                      _formKey.currentState!.reset();
                    }
                  },
                ),
                const SizedBox(width: 10),
                PowerButton(
                  flex: 3,
                  bgColor: PowerColor.primary,
                  text: isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text('Estimasi', style: btnStyle),
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      final isOnline =
                          await connectivityRepository.isConnected();
                      if (isOnline) {
                        predictSoh();
                      } else {
                        handleNoConnection();
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
