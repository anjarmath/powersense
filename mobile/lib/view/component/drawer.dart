import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:powersense/view/actions/handle_exit.dart';
import 'package:powersense/view/screen/about.dart';
import 'package:powersense/view/screen/estimate_soh.dart';
import 'package:powersense/view/screen/home_screen.dart';
import 'package:powersense/view/screen/list_saved_screen.dart';
import 'package:powersense/view/util/colors.dart';

class PowerListObject {
  final Icon icon;
  final String text;
  final Widget target;

  PowerListObject({
    required this.icon,
    required this.text,
    required this.target,
  });
}

class PowerDrawer extends StatelessWidget {
  final int indexSelected;
  const PowerDrawer({
    super.key,
    required this.indexSelected,
  });

  @override
  Widget build(BuildContext context) {
    List<PowerListObject> listObject = [
      PowerListObject(
        icon: const Icon(Icons.home_outlined),
        text: 'Home Screen',
        target: const HomeScreen(),
      ),
      PowerListObject(
        icon: const Icon(Ionicons.battery_half_outline),
        text: 'Estimasi SoH',
        target: const EstimateSOHScreen(),
      ),
      PowerListObject(
        icon: const Icon(Ionicons.bookmark_outline),
        text: 'Tersimpan',
        target: const ListSavedScreen(),
      ),
      PowerListObject(
        icon: const Icon(Icons.info_outline_rounded),
        text: 'Tentang',
        target: const AboutScreen(),
      ),
    ];

    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DrawerHeader(
              decoration: BoxDecoration(color: PowerColor.primary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/svg/icons/icons_dark_labeled.svg'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: listObject.length,
                itemBuilder: (context, index) {
                  final bool isSelected = (indexSelected == index);
                  return ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      !isSelected
                          ? Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => listObject[index].target))
                          : null;
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    iconColor: PowerColor.dark,
                    textColor: PowerColor.dark,
                    selectedColor: PowerColor.primary,
                    selectedTileColor: PowerColor.primary.withOpacity(0.1),
                    selected: isSelected,
                    leading: listObject[index].icon,
                    title: Text(listObject[index].text),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Ink(
              decoration: BoxDecoration(
                  color: PowerColor.error,
                  borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  handleExitAction(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Keluar',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
