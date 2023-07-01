import 'package:flutter/material.dart';
import 'package:powersense/model/saved_model.dart';

import '../component/button.dart';
import '../util/colors.dart';
import '../util/text_style.dart';

void handleSaveAction(BuildContext context, SavedModel savedModel) {
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
              fontSize: 48,
            ),
          ),
        ),
        content: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Yakin ingin keluar?'),
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
                text: const Text('Simpan', style: btnStyle),
                bgColor: PowerColor.error,
                onTap: () {
                  // SystemNavigator.pop();
                },
              ),
            ],
          )
        ],
      );
    },
  );
}
