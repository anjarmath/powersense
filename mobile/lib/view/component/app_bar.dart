import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:powersense/view/actions/handle_exit.dart';
import 'package:powersense/view/util/colors.dart';

class PowerAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isColored;
  final bool isDark;
  final bool isElevated;
  const PowerAppBar({
    super.key,
    required this.isColored,
    this.isDark = false,
    required this.isElevated,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      iconTheme:
          IconThemeData(color: isColored ? Colors.white : PowerColor.dark),
      actionsIconTheme: IconThemeData(color: PowerColor.error),
      backgroundColor: isColored
          ? isDark
              ? PowerColor.dark
              : PowerColor.primary
          : Colors.white,
      elevation: isElevated ? null : 0,
      title: Row(
        children: [
          SvgPicture.asset(isColored
              ? isDark
                  ? 'assets/svg/icons/icons_verydark.svg'
                  : 'assets/svg/icons/icons_dark.svg'
              : 'assets/svg/icons/icons_light.svg'),
          const SizedBox(width: 10),
          Text(
            'PowerSense',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isColored ? Colors.white : PowerColor.primary,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            handleExitAction(context);
          },
          icon: const Icon(
            Icons.exit_to_app_rounded,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
