import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  const PaymentSuccessfulPage({
    Key? key,
    required this.backIconClick,
    required this.onPressed,
  }) : super(key: key);
  final Function()? backIconClick;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
    return BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GroshopPage(
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  AppbarWidget(
                    homePage: false,
                    text: 'Payment',
                    icon: Icons.more_vert,
                    backIconClick: backIconClick,
                  ),
                  const Gap(smallSpacing),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Spacer(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShadowText(
                            'Payment Success !!',
                            style: TextStyle(fontSize: 30),
                          ),
                          Gap(largeSpacing),
                          Icon(
                            Icons.check_circle,
                            size: 160,
                            color: Colors.green,
                          ),
                          Gap(largeSpacing * 2),
                          Text('See Payment Details'),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: onPressed,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'See Payment Details',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SvgPicture.asset(homeSvg),
                          ],
                        ),
                      ),
                      const Gap(largeSpacing * 2),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}
