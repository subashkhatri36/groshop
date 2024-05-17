import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/StringApp/app_string.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class NavItem {
  final String icon;
  final String text;
  final Function(int index)? onPressed;
  final Color? color;
  NavItem({
    required this.icon,
    required this.text,
    this.onPressed,
    this.color,
  });
}

List<NavItem> navItems = [
  NavItem(
    icon: homeSvg,
    text: home,
  ),
  NavItem(
    icon: favSvg,
    text: favourite,
  ),
  NavItem(
    icon: cartSvg,
    text: myCart,
  ),
  NavItem(
    icon: profileSvg,
    text: profile,
  ),
];

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({
    super.key,
    required this.currentPostionSelect,
    required this.position,
  });
  final int currentPostionSelect;
  final Function(int current) position;

  @override
  Widget build(BuildContext context) {
    final selectedTextStyle =
        TextStyle(fontWeight: FontWeight.w500, fontSize: 15);
    final textStyle = TextStyle(fontSize: 15);
    Widget child(int index) => InkWell(
          onTap: () {
            position(index);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: smallSpacing),
            child: Column(
              children: [
                if (currentPostionSelect == index)
                  Column(
                    children: [
                      Gap(2),
                      Container(
                        width: MediaQuery.of(context).size.width / 5.7,
                        height: 4,
                        decoration: BoxDecoration(
                            color: selectedIconColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black54, offset: Offset(1, 1))
                            ]),
                      ),
                    ],
                  ),
                const Spacer(),
                SvgPicture.asset(
                  navItems[index].icon,
                  colorFilter: currentPostionSelect == index
                      ? const ColorFilter.mode(
                          selectedIconColor, BlendMode.srcIn)
                      : null,
                  height: 25,
                  width: 25,
                  fit: BoxFit.fitHeight,
                ),
                Text(
                  navItems[index].text,
                  style: currentPostionSelect == index
                      ? selectedTextStyle
                      : textStyle,
                ),
              ],
            ),
          ),
        );
    return Container(
      height: 80,
      color: yellowColor,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [for (int i = 0; i < navItems.length; i++) child(i)],
      ),
    );
  }
}
