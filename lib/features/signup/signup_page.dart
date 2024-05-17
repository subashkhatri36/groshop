import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/StringApp/app_string.dart';
import 'package:groshop/cores/components/app_button.dart';
import 'package:groshop/cores/components/app_richtext.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/components/text_field.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/router/router_path.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool radioStatus = false;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400);
    const labelStyle = TextStyle(fontSize: 18, color: Colors.black);
    return GroshopPage(
      Column(
        children: [
          const Gap(extraLargeSpacing),
          const ShadowText(
            signUp,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
          const Gap(largeSpacing),
          MultiColorText(data: [
            MultiTextClass(
              textWidget: const ShadowText(
                createAn,
                style: labelStyle,
              ),
            ),
            MultiTextClass(
              textWidget: ShadowText(
                account,
                style: labelStyle.copyWith(color: Colors.blue),
              ),
            ),
            MultiTextClass(
              textWidget: const ShadowText(
                accessAll,
                style: labelStyle,
              ),
              onPressed: () {},
            ),
          ]),
          const ShadowText(
            serviceOfGroShop,
            style: labelStyle,
          ),
          const Gap(extraLargeSpacing),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: largeSpacing),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ShadowText(
                      emailPhone,
                      style: textStyle,
                    ),
                    const TextFieldWidget(),
                    const ShadowText(
                      password,
                      style: textStyle,
                    ),
                    const TextFieldWidget(),
                    const ShadowText(
                      rePassword,
                      style: textStyle,
                    ),
                    const TextFieldWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<bool>(
                          value: true,
                          groupValue: radioStatus,
                          fillColor:
                              WidgetStateProperty.resolveWith((Set states) {
                            if (states.contains(WidgetState.disabled)) {
                              return backgroundButtonColor.withOpacity(.32);
                            }
                            return backgroundButtonColor;
                          }),
                          activeColor:
                              backgroundButtonColor, // Change the active radio button color here
                          // fillColor: WidgetStateColor..all(Colors.blue),
                          onChanged: (value) {
                            setState(() {
                              radioStatus = value ?? true;
                            });
                          },
                        ),
                        ShadowText(
                          correctInformation,
                          style: labelStyle.copyWith(
                            fontSize: smallFontSize,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    const Gap(extraLargeSpacing),
                    Center(
                      child: GroShopButton(
                        signUp,
                        fontSize: 22,
                        onPressed: () {
                          context.go(signUpSuccessfulPath);
                        },
                      ),
                    ),
                    const Gap(mediumSpacing),
                    MultiColorText(data: [
                      MultiTextClass(
                        textWidget: ShadowText(
                          alreadyUser,
                          style: textStyle.copyWith(color: Colors.black38),
                        ),
                      ),
                      MultiTextClass(
                        textWidget: ShadowText(
                          login,
                          style: textStyle.copyWith(color: Colors.red),
                        ),
                        onPressed: () {
                          context.go(loginPath);
                        },
                      ),
                    ]),
                    const Gap(mediumSpacing),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
