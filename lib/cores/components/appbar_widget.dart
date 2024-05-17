import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/cores/StringApp/app_string.dart';
import 'package:groshop/cores/components/icon_button_widget.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key? key,
    this.homePage = true,
    this.text,
    this.iconClick,
    this.backIconClick,
    this.iconColor,
    this.icon,
  }) : super(key: key);
  final bool homePage;
  final String? text;
  final IconData? icon;
  final Color? iconColor;
  final Function()? iconClick;
  final Function()? backIconClick;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.w800);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (homePage) const ShadowText(daily, style: textStyle),
              if (!homePage)
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Column(
                    children: [
                      const Gap(smallSpacing),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButtonWidget(
                            onPressed: backIconClick ??
                                () {
                                  context.pop();
                                },
                            icon: Icons.arrow_back,
                          ),
                          ShadowText(
                            text ?? 'Test',
                            style: textStyle,
                            aign: TextAlign.center,
                          ),
                          const Gap(smallSpacing),
                        ],
                      ),
                    ],
                  ),
                ),
              if (homePage)
                const ShadowText(
                  groceryFood,
                  style: textStyle,
                ),
            ],
          ),
          const Spacer(),
          IconButtonWidget(
            onPressed: iconClick,
            icon: icon,
            iconColor: iconColor,
          ),
        ],
      ),
    );
  }
}
