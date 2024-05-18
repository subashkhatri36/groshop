import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/cores/StringApp/app_string.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/components/app_button.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/indicator.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/router/router_path.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w400);
    return GroshopPage(
      Column(
        children: [
          Expanded(child: Image.asset(fruitImage)),
          const IndicatorWidget(
            currentPostion: 2,
            totalLength: 3,
          ),
          const ShadowText(
            groceryShop,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
          const Gap(smallSpacing),
          ShadowText(
            easyWayToBuyGroceryShopping,
            style: textStyle.copyWith(color: Colors.black54),
            aign: TextAlign.center,
          ),
          const Gap(extraLargeSpacing),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: GroShopButton(
              'Get Started',
              fontSize: 22,
              onPressed: () {
                context.go(navPath);
              },
            ),
          ),
          const Gap(mediumSpacing),
        ],
      ),
    );
  }
}
