import 'package:flutter/material.dart';

class PowerButton extends StatelessWidget {
  final int flex;
  final Widget text;
  final IconData? appendIcon;
  final Color bgColor;
  final Function()? onTap;
  const PowerButton({
    super.key,
    this.flex = 1,
    required this.text,
    this.appendIcon,
    required this.bgColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Ink(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text,
                // const SizedBox(width: 6),
                // Icon(appendIcon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
