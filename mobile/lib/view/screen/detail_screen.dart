import 'package:flutter/material.dart';
import 'package:powersense/model/saved_model.dart';
import 'package:powersense/view/component/app_bar.dart';
import 'package:powersense/view/component/button.dart';
import 'package:powersense/view/util/colors.dart';
import 'package:powersense/view/util/text_style.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.data});

  final SavedModel data;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
                      widget.data.name,
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
                    trailingValue: widget.data.time,
                  ),
                  PowerListTile(
                    title: 'Capacity',
                    trailingValue: widget.data.payload.capacity.toString(),
                  ),
                  PowerListTile(
                    title: 'Voltage Measured',
                    trailingValue:
                        widget.data.payload.voltage_measured.toString(),
                  ),
                  PowerListTile(
                    title: 'Current Measured',
                    trailingValue:
                        widget.data.payload.current_measured.toString(),
                  ),
                  PowerListTile(
                    title: 'Temperature Measured',
                    trailingValue:
                        widget.data.payload.temperature_measured.toString(),
                  ),
                  PowerListTile(
                    title: 'Current Load',
                    trailingValue: widget.data.payload.current_load.toString(),
                  ),
                  PowerListTile(
                    title: 'Voltage Load',
                    trailingValue: widget.data.payload.voltage_load.toString(),
                  ),
                  PowerListTile(
                    title: 'Time',
                    trailingValue: widget.data.payload.time.toString(),
                  ),
                  Divider(
                    color: PowerColor.dark,
                  ),
                  PowerListTile(
                    title: 'SOH',
                    isMain: true,
                    trailingValue: widget.data.soh.toString(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: PowerButton(
                  onTap: () {},
                  text: const Text(
                    'Simpan',
                    style: btnStyle,
                  ),
                  bgColor: PowerColor.primary),
            )
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
