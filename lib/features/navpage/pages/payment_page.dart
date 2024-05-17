import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/icon_button.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/features/navpage/product_model.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    Key? key,
    required this.backIconClick,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final Function()? backIconClick;
  final Function()? onPressed;
  final String label;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool radioStatus = false;
  String selectPayment = visa;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

    const decoration = InputDecoration(
      hintText: '************',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
      border: OutlineInputBorder(
        // borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    );
    return BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GroshopPage(
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppbarWidget(
                    homePage: false,
                    text: 'Payment',
                    icon: Icons.more_vert,
                    backIconClick: widget.backIconClick,
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          margin: const EdgeInsets.only(top: largeSpacing),
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Color(0xCACACA4F),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            const Gap(largeSpacing * 2),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Visa Card',
                                      style: textStyle,
                                    ),
                                    const Gap(largeSpacing),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 2),
                                      child: Row(
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              'Card No:',
                                              style: textStyle,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: decoration,
                                            ),
                                          ),
                                          const Gap(mediumSpacing),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 2),
                                      child: Row(
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              'Expiry Date:',
                                              style: textStyle,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: decoration,
                                            ),
                                          ),
                                          const Gap(mediumSpacing),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 2),
                                      child: Row(
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              'Account Holder:',
                                              style: textStyle,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: decoration,
                                            ),
                                          ),
                                          const Gap(mediumSpacing),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 2),
                                      child: Row(
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              'CCV:',
                                              style: textStyle,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: decoration,
                                            ),
                                          ),
                                          const Gap(mediumSpacing),
                                        ],
                                      ),
                                    ),
                                    const Gap(mediumSpacing),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Radio<bool>(
                                          value: true,
                                          groupValue: radioStatus,
                                          fillColor:
                                              WidgetStateProperty.resolveWith(
                                                  (Set states) {
                                            if (states.contains(
                                                WidgetState.disabled)) {
                                              return Colors.black
                                                  .withOpacity(.32);
                                            }
                                            return Colors.black;
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
                                        const Text(
                                          'Save Payment Details',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),

                                    //payment selection area
                                    Container(
                                      padding:
                                          const EdgeInsets.all(mediumSpacing),
                                      margin: const EdgeInsets.only(
                                          top: largeSpacing),
                                      color: Colors.white24,
                                      child: Column(
                                        children: [
                                          ...paymentSummary.map(
                                            (summary) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: mediumSpacing),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Expanded(child: Column()),
                            const Gap(smallSpacing),
                            GroShopIconButton(
                              onPressed: widget.onPressed,
                              label: widget.label,
                            ),
                            const Gap(smallSpacing),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
