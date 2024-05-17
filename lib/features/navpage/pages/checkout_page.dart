import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/icon_button.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/features/navpage/product_model.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    Key? key,
    required this.backIconClick,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final Function()? backIconClick;
  final Function()? onPressed;
  final String label;

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String selectedPayment = visa;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
    const normalTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
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
                    text: 'Checkout',
                    icon: Icons.more_vert,
                    backIconClick: widget.backIconClick,
                  ),
                  const Gap(smallSpacing),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: largeSpacing),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Deliver to :',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              const Gap(smallSpacing),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    map,
                                    width: 48,
                                    height: 69,
                                  ),
                                  const Gap(smallSpacing),
                                  const Text(
                                    '25/3 Housing Estate,\nAustralia',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    'Change',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(mediumSpacing),
                              const Row(
                                children: [
                                  Icon(Icons.schedule),
                                  Gap(smallSpacing),
                                  Text(
                                    'Will deliver in the next 2 days',
                                    style: normalTextStyle,
                                  )
                                ],
                              ),
                              const Gap(largeSpacing * 2),
                              const Text(
                                'Payment Method',
                                style: normalTextStyle,
                              ),
                              const Gap(mediumSpacing),
                              //payment selection area
                              SizedBox(
                                height: 70,
                                width: MediaQuery.of(context).size.width * .9,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...paymentList.map(
                                        (pay) => InkWell(
                                          onTap: () {
                                            selectedPayment = pay;
                                            setState(() {});
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: smallSpacing),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: smallSpacing,
                                                horizontal: mediumSpacing),
                                            decoration: BoxDecoration(
                                              border: pay == selectedPayment
                                                  ? Border.all(
                                                      color: Colors.grey)
                                                  : Border.all(
                                                      color:
                                                          Colors.transparent),
                                            ),
                                            child: Image.asset(pay),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              //payment Area
                              const Gap(mediumSpacing),
                              Container(
                                padding: const EdgeInsets.all(mediumSpacing),
                                margin:
                                    const EdgeInsets.only(top: largeSpacing),
                                color: Colors.white24,
                                child: Column(
                                  children: [
                                    ...paymentSummary.map(
                                      (summary) => Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: mediumSpacing),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ShadowText(
                                              summary.title,
                                              style: textStyle,
                                            ),
                                            ShadowText(
                                              summary.payment,
                                              style: textStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(smallSpacing),
                      GroShopIconButton(
                        onPressed: widget.onPressed,
                        label: widget.label,
                      ),
                      const Gap(smallSpacing),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}
