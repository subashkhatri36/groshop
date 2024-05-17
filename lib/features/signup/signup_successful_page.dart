import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/StringApp/app_string.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/components/app_button.dart';
import 'package:groshop/cores/components/app_richtext.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/indicator.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/router/router_path.dart';

class SingUpSuccessfulPage extends StatefulWidget {
  const SingUpSuccessfulPage({Key? key}) : super(key: key);

  @override
  State<SingUpSuccessfulPage> createState() => _SingUpSuccessfulPageState();
}

class _SingUpSuccessfulPageState extends State<SingUpSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 24, color: Colors.black38);
    return GroshopPage(
      Column(
        children: [
          Expanded(child: Image.asset(fruitImage)),
          const IndicatorWidget(
            currentPostion: 0,
            totalLength: 3,
          ),
          const Gap(smallSpacing),
          const ShadowText(
            signUpSuccessful,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
          Center(
            child: GroShopButton(
              login,
              fontSize: 22,
              onPressed: () {
                context.go(loginPath);
              },
            ),
          ),
          const Gap(smallSpacing),
          MultiColorText(data: [
            MultiTextClass(
              textWidget: const ShadowText(
                notUser,
                style: textStyle,
              ),
            ),
            MultiTextClass(
              textWidget: ShadowText(
                signUp,
                style: textStyle.copyWith(color: redColor),
              ),
              onPressed: () {
                context.go(signUpPath);
              },
            ),
            MultiTextClass(
              textWidget: const ShadowText(
                youAreYou,
                style: textStyle,
              ),
            ),
          ]),
          const Gap(mediumSpacing),
        ],
      ),
    );
  }
}
