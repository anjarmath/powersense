import 'package:flutter/material.dart';
import 'package:powersense/view/component/app_bar.dart';
import 'package:powersense/view/component/drawer.dart';
import 'package:powersense/view/util/colors.dart';
import 'package:powersense/view/util/strings.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PowerColor.dark,
      appBar: const PowerAppBar(
        isColored: true,
        isElevated: true,
        isDark: true,
      ),
      drawer: const PowerDrawer(indexSelected: 3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.info_outline_rounded,
              size: 40,
              color: PowerColor.primary,
            ),
            Text(
              'Tentang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: PowerColor.primary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              PowerTexts().about,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            // const SizedBox(height: 10),
            // Text(
            //   PowerTexts().aboutDesc,
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
