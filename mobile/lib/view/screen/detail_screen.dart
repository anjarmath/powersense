import 'package:flutter/material.dart';
import 'package:powersense/model/saved_model.dart';
import 'package:powersense/view/component/app_bar.dart';
import 'package:powersense/view/component/button.dart';
import 'package:powersense/view/util/colors.dart';
import 'package:powersense/view/util/text_style.dart';
import 'package:powersense/view_model/repository/save_repository.dart';

import '../component/input_field.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.data});

  final SavedModel data;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  SaveRepository saveRepository = SaveRepositoryImpl();
  bool isLoading = false;
  bool isError = false;
  late SavedModel modelData;

  @override
  void initState() {
    super.initState();
    modelData = widget.data;
  }

  void handleSaveAction(SavedModel savedModel) {
    TextEditingController saveController =
        TextEditingController(text: savedModel.name);
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          content: PowerTextField(
            controller: saveController,
            label: 'Judul',
          ),
          actionsPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
            Row(
              children: [
                PowerButton(
                  flex: 1,
                  text: const Text('Batal', style: btnStyle),
                  bgColor: PowerColor.dark,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 10),
                PowerButton(
                  flex: 1,
                  text: isLoading
                      ? const CircularProgressIndicator()
                      : const Text('Simpan', style: btnStyle),
                  bgColor: PowerColor.primary,
                  onTap: () async {
                    final newSavedModel = widget.data.copyWith(
                      name: saveController.text,
                    );
                    setState(() {
                      isLoading = true;
                    });

                    final saveResult =
                        await saveRepository.saveHistory(newSavedModel);
                    saveResult.fold((l) {
                      setState(() {
                        isError = true;
                      });
                    }, (r) {
                      setState(() {
                        modelData = r;
                      });
                      Navigator.pop(context);
                    });
                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
              ],
            )
          ],
        );
      },
    );
  }

  void handleDeleteAction(String id) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          title: Center(
            child: Text(
              'Perhatian',
              style: TextStyle(
                color: PowerColor.error,
                fontSize: 32,
              ),
            ),
          ),
          content: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yakin ingin menghapus?'),
            ],
          ),
          actionsPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
            Row(
              children: [
                PowerButton(
                  flex: 1,
                  text: const Text('Batal', style: btnStyle),
                  bgColor: PowerColor.dark,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 10),
                PowerButton(
                  flex: 1,
                  text: isLoading
                      ? const CircularProgressIndicator()
                      : const Text('Hapus', style: btnStyle),
                  bgColor: PowerColor.error,
                  onTap: () async {
                    setState(() {
                      isLoading = true;
                    });

                    final deleteResult = await saveRepository.deleteHistory(id);
                    deleteResult.fold((l) {
                      setState(() {
                        isError = true;
                      });
                    }, (r) {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    });
                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PowerAppBar(isColored: true, isElevated: true),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const SizedBox(height: 12),
                  Center(
                    child: Text(
                      modelData.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: PowerColor.dark,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  PowerListTile(
                    title: 'Diprediksi pada',
                    trailingValue: modelData.time,
                  ),
                  PowerListTile(
                    title: 'Capacity',
                    trailingValue:
                        modelData.payload.payload.capacity.toString(),
                  ),
                  PowerListTile(
                    title: 'Voltage Measured',
                    trailingValue:
                        modelData.payload.payload.voltage_measured.toString(),
                  ),
                  PowerListTile(
                    title: 'Current Measured',
                    trailingValue:
                        modelData.payload.payload.current_measured.toString(),
                  ),
                  PowerListTile(
                    title: 'Temperature Measured',
                    trailingValue: widget
                        .data.payload.payload.temperature_measured
                        .toString(),
                  ),
                  PowerListTile(
                    title: 'Current Load',
                    trailingValue:
                        modelData.payload.payload.current_load.toString(),
                  ),
                  PowerListTile(
                    title: 'Voltage Load',
                    trailingValue:
                        modelData.payload.payload.voltage_load.toString(),
                  ),
                  PowerListTile(
                    title: 'Time',
                    trailingValue: modelData.payload.payload.time.toString(),
                  ),
                  PowerListTile(
                    title: 'Jenis Model',
                    trailingValue: modelData.modelName,
                  ),
                  Divider(
                    color: PowerColor.dark,
                  ),
                  PowerListTile(
                    title: 'SOH',
                    isMain: true,
                    trailingValue: modelData.soh.toString(),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    modelData.isSaved
                        ? PowerButton(
                            onTap: () {
                              handleDeleteAction(modelData.id);
                            },
                            text: const Text(
                              'Hapus',
                              style: btnStyle,
                            ),
                            bgColor: PowerColor.error)
                        : PowerButton(
                            onTap: () {
                              handleSaveAction(modelData);
                            },
                            text: const Text(
                              'Simpan',
                              style: btnStyle,
                            ),
                            bgColor: PowerColor.primary),
                  ],
                ))
          ],
        ));
  }
}

class PowerListTile extends StatelessWidget {
  const PowerListTile({
    super.key,
    required this.title,
    required this.trailingValue,
    this.isMain = false,
  });

  final String title;
  final bool isMain;
  final String trailingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isMain ? PowerColor.primary.withAlpha(100) : Colors.transparent,
      child: ListTile(
        title: Text(title),
        trailing: Text(
          trailingValue,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
