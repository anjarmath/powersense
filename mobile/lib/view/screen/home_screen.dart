import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:powersense/view/component/app_bar.dart';
import 'package:powersense/view/component/card.dart';
import 'package:powersense/view/component/drawer.dart';
import 'package:powersense/view/screen/estimate_soh.dart';
import 'package:powersense/view/util/colors.dart';
import 'package:powersense/view/util/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: const PowerAppBar(
        isColored: true,
        isElevated: false,
      ),
      drawer: const PowerDrawer(indexSelected: 0),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            decoration: BoxDecoration(
              color: PowerColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: const Center(
              child: Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: PowerCard(
                            color: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const EstimateSOHScreen()));
                            },
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.battery_half_outline,
                                  color: PowerColor.primary,
                                  size: 72,
                                ),
                                Text(
                                  'Estimasi SoH (State of Health)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: PowerColor.primary,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Klik untuk mulai estimasi',
                                  style: TextStyle(
                                    color: PowerColor.dark,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Expanded(
                        //   child: PowerCard(
                        //     color: Colors.white,
                        //     onTap: () {},
                        //     content: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Icon(
                        //           Ionicons.battery_charging_outline,
                        //           color: PowerColor.primary,
                        //           size: 72,
                        //         ),
                        //         Text(
                        //           'Estimasi RUL',
                        //           style: TextStyle(
                        //             color: PowerColor.primary,
                        //             fontSize: 32,
                        //             fontWeight: FontWeight.bold,
                        //           ),
                        //         ),
                        //         Text(
                        //           'Remaining Useful Life',
                        //           style: TextStyle(
                        //             color: PowerColor.dark,
                        //             fontSize: 16,
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  PowerCard(
                    color: PowerColor.dark,
                    content: Column(
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
