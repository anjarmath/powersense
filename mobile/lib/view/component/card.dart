import 'package:flutter/material.dart';

class PowerCard extends StatelessWidget {
  final Color color;
  final Widget content;
  final void Function()? onTap;
  const PowerCard(
      {super.key, required this.color, required this.content, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: content,
        ),
      ),
    );
  }
}
