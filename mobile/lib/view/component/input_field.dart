import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/colors.dart';

class PowerDropdownField extends StatelessWidget {
  final String label;
  final String? activeValue;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onChanged;
  const PowerDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.activeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: PowerColor.dark,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        DropdownButtonFormField(
          value: activeValue,
          items: items,
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(10),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: PowerColor.primary,
                ),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: PowerColor.gray,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}

class PowerTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool isNumeric;
  const PowerTextField({
    super.key,
    required this.label,
    this.controller,
    this.isNumeric = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: PowerColor.dark,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          keyboardType: isNumeric
              ? const TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
          inputFormatters: isNumeric
              ? <TextInputFormatter>[
                  // FilteringTextInputFormatter.digitsOnly,
                ]
              : <TextInputFormatter>[],
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(10),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: PowerColor.primary,
                ),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: PowerColor.gray,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tidak boleh kosong';
            }
            return null;
          },
        ),
      ],
    );
  }
}

class PowerDropdown extends StatelessWidget {
  const PowerDropdown({
    super.key,
    required this.initialChoice,
    required this.modelChoices,
    required this.onChanged,
  });

  final String initialChoice;
  final List<String> modelChoices;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pilih Model',
          style: TextStyle(
            color: PowerColor.dark,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        DropdownButtonFormField(
          value: initialChoice,
          onChanged: onChanged,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: PowerColor.primary,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: PowerColor.gray,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          items: modelChoices.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
        ),
      ],
    );
  }
}
