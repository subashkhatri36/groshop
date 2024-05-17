import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/icon_button.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class PinEnterPage extends StatefulWidget {
  const PinEnterPage({
    Key? key,
    required this.backIconClick,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final Function()? backIconClick;
  final Function()? onPressed;
  final String label;

  @override
  State<PinEnterPage> createState() => _PinEnterPageState();
}

class _PinEnterPageState extends State<PinEnterPage> {
  bool radioStatus = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController pinController = TextEditingController();
    const textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

    const decoration = InputDecoration(
      hintText: '****',
      hintStyle: textStyle,
      labelStyle: textStyle,
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
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            const Gap(largeSpacing * 2),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Text(
                                      'Enter PIN',
                                      style: textStyle,
                                    ),
                                    const Gap(largeSpacing),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 2),
                                      child: SizedBox(
                                        width: 150,
                                        child: TextFormField(
                                          controller: pinController,
                                          textAlign: TextAlign.center,
                                          obscureText: true,
                                          decoration: decoration,
                                        ),
                                      ),
                                    ),
                                    const Gap(largeSpacing),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .5,
                                      child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount:
                                              3, // number of items in each row
                                          mainAxisSpacing:
                                              1.0, // spacing between rows
                                          crossAxisSpacing:
                                              1.0, // spacing between columns
                                        ),
                                        padding: const EdgeInsets.all(
                                            8.0), // padding around the grid
                                        itemCount: 12, // total number of items
                                        itemBuilder: (context, index) {
                                          int value = 0;
                                          if (index != 9 ||
                                              index != 10 ||
                                              index != 11) {
                                            value = index + 1;
                                          } else {
                                            value = index;
                                          }
                                          return InkWell(
                                            onTap: () {
                                              if (value == 10) {
                                                pinController.text +=
                                                    '.'.toString();
                                              } else if (value == 11) {
                                                pinController.text +=
                                                    0.toString();
                                              } else if (value == 12) {
                                                List<String> c =
                                                    pinController.text.split(
                                                        ""); // ['a', 'a', 'a', 'b', 'c', 'd']
                                                c.removeLast();
                                                pinController.text = c.join();
                                              } else {
                                                pinController.text +=
                                                    value.toString();
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white)),
                                              child: Center(
                                                child: value == 10
                                                    ? Text(
                                                        '.'.toString(),
                                                        style: const TextStyle(
                                                          fontSize: 18.0,
                                                        ),
                                                      )
                                                    : value == 11
                                                        ? Text(
                                                            0.toString(),
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18.0,
                                                            ),
                                                          )
                                                        : value == 12
                                                            ? const Icon(Icons
                                                                .arrow_back)
                                                            : Text(
                                                                value
                                                                    .toString(),
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    )
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
          //   GroshopPage(
          //   Column(
          //     children: [
          //       AppbarWidget(
          //         homePage: false,
          //         text: 'Payment',
          //         icon: Icons.more_vert,
          //         backIconClick: backIconClick,
          //       ),
          //       Expanded(
          //           child: Column(
          //         children: [
          //           Expanded(
          //               child: Stack(
          //             children: [
          //               Expanded(
          //                 child: Container(
          //                   child: Opacity(
          //                     opacity: 0.5,
          //                     child: Text(''),
          //                     // Container(
          //                     //   margin: const EdgeInsets.only(top: largeSpacing),
          //                     //   width: MediaQuery.of(context).size.width,
          //                     //   decoration: const BoxDecoration(
          //                     //     color: Color(0xCACACA4F),
          //                     //     borderRadius: BorderRadius.only(
          //                     //       topRight: Radius.circular(40),
          //                     //       topLeft: Radius.circular(40),
          //                     //     ),
          //                     //   ),
          //                     // ),
          //                   ),
          //                 ),
          //               ),
          //               // Expanded(
          //               //     child: Column(
          //               //   children: [
          //               //     Column(
          //               //       children: [],
          //               //     ),
          //               //     const Gap(smallSpacing),
          //               //     // Padding(
          //               //     //   padding: const EdgeInsets.all(8.0),
          //               //     //   child: GroShopIconButton(
          //               //     //     onPressed: onPressed,
          //               //     //     label: label,
          //               //     //   ),
          //               //     // ),
          //               //     const Gap(smallSpacing),
          //               //   ],
          //               // ))
          //             ],
          //           )),
          //         ],
          //       )),
          //     ],
          //   ),
          // );
        });
  }
}
