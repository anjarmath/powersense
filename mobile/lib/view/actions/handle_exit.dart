import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:powersense/view/util/text_style.dart';

import '../component/button.dart';
import '../util/colors.dart';

void handleExitAction(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
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
                text: const Text('Tidak', style: btnStyle),
                bgColor: PowerColor.dark,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: 10),
              PowerButton(
                flex: 1,
                text: const Text('Ya', style: btnStyle),
                bgColor: PowerColor.error,
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          )
        ],
      );
    },
  );
}
