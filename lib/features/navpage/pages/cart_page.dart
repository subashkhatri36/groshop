import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/icon_button.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    Key? key,
    required this.backIconClick,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final Function()? backIconClick;
  final Function()? onPressed;
  final String label;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalAmount = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    text: 'My Cart',
                    backIconClick: widget.backIconClick,
                  ),
                  const Gap(smallSpacing),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.cartList?.length ?? 0,
                              itemBuilder: (context, index) {
                                final cartItem = state.cartList![index];
                                totalAmount += (cartItem.qty * cartItem.price);
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: smallSpacing,
                                        horizontal: smallSpacing),
                                    decoration: const BoxDecoration(
                                        color: Colors.white70,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            offset: Offset(1, 1),
                                          )
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          child: Image.asset(
                                            cartItem.productImage,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cartItem.name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 24,
                                              ),
                                            ),
                                            const Text(
                                              'Frest Fruit',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'Rs ${cartItem.price}/${cartItem.unit}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(
                                              smallSpacing / 2),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  context.read<AppBloc>().add(
                                                      IncreaseQty(cartItem));
                                                },
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 24,
                                                ),
                                              ),
                                              Text(cartItem.qty.toString()),
                                              InkWell(
                                                onTap: () {
                                                  context.read<AppBloc>().add(
                                                      DecreaseQty(cartItem));
                                                },
                                                child: const Icon(
                                                  Icons.remove,
                                                  size: 24,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Total Amount',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Rs ${totalAmount.toString()}',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            const Gap(smallSpacing),
                            GroShopIconButton(
                              onPressed: widget.onPressed,
                              label: widget.label,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}
