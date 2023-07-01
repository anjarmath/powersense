import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  PredictionRepository predictionRepository = PredictionRepositoryImpl();

  final _formKey = GlobalKey<FormState>();
  TextEditingController capacityController = TextEditingController();
  TextEditingController voltageMeasuredController = TextEditingController();
  TextEditingController currentMeasuredController = TextEditingController();
  TextEditingController temperatureController = TextEditingController();
  TextEditingController currentLoadController = TextEditingController();
  TextEditingController voltageLoadController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  bool isLoading = false;

  String initialChoice = 'Random Forest (Direkomendasikan)';
  final modelChoices = ['Random Forest (Direkomendasikan)'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
    ref.read(modelStateNotifierProvider.notifier).updatePayload(payload);

    final response = await predictionRepository.predict(payload);
    response.fold((l) {
      // print(l);
    }, (r) {
      print(r.soh);
      ref
          .read(modelStateNotifierProvider.notifier)
          .updateSOH(r.soh.toStringAsFixed(4));
      ref.read(modelStateNotifierProvider.notifier).updateTime();
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) =>
              DetailScreen(data: ref.read(modelStateNotifierProvider))));
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PowerAppBar(isColored: false, isElevated: true),
      drawer: const PowerDrawer(indexSelected: 1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
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
                            initialChoice = newValue.toString();
                          });
                        },
                        initialChoice: initialChoice,
                        modelChoices: modelChoices,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
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
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      predictSoh();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
