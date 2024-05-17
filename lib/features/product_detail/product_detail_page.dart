import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/router/router_path.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 22);

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
                    text: state.productDetail?.name,
                    backIconClick: () {
                      context.go(navPath);
                    },
                    icon: Icons.favorite,
                    iconColor: Colors.red,
                    iconClick: () {
                      context.read<AppBloc>().add(
                            AddFavroit(
                              state.productDetail!,
                            ),
                          );
                    },
                  ),
                ),
                const Gap(smallSpacing),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              state.productDetail?.productImage ?? '',
                              width: MediaQuery.of(context).size.width * .7,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFDD58D9),
                                radius: 8,
                              ),
                              Gap(3),
                              CircleAvatar(
                                backgroundColor: Color(0xFFDD58D9),
                                radius: 9,
                              ),
                              Gap(3),
                              CircleAvatar(
                                backgroundColor: Color(0xFFDD58D9),
                                radius: 8,
                              ),
                            ],
                          ),
                          const Gap(smallSpacing),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  ShadowText(
                                    'Fresh ${state.productDetail?.name}',
                                    style: textStyle,
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xFFFEDF67),
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(1, 1),
                                            )
                                          ],
                                        ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      context.read<AppBloc>().add(
                                          DecreaseQty(state.productDetail!));
                                    },
                                    icon: const Icon(Icons.remove_circle),
                                    color: const Color(0xFFE8C43B),
                                  ),
                                  Text(
                                    '${state.productDetail?.qty.toString()}${state.productDetail?.unit.toString()}' ??
                                        '',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      context.read<AppBloc>().add(
                                          IncreaseQty(state.productDetail!));
                                    },
                                    icon: const Icon(Icons.add_circle),
                                    color: const Color(0xFFE8C43B),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Gap(smallSpacing),
                          const ShadowText(
                            'Description',
                            style: textStyle,
                          ),
                          const Gap(smallSpacing),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: largeSpacing * 3),
                            child: Text(
                              '${state.productDetail?.description}...See more',
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          const Gap(smallSpacing),
                          const ShadowText(
                            'Related Items',
                            style: textStyle,
                          ),
                          const Gap(smallSpacing),
                          SizedBox(
                            height: 100,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...?state.productDetail?.relatedItems.map(
                                    (e) => Container(
                                      width: 75,
                                      height: 92,
                                      margin: const EdgeInsets.all(5),
                                      padding:
                                          const EdgeInsets.all(smallSpacing),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(1, 2))
                                          ]),
                                      child: Image.asset(
                                        e,
                                        width: 71,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Bottom Part
                Container(
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ShadowText(
                            'Price',
                            style: TextStyle(fontSize: 15),
                          ),
                          ShadowText(
                            'Rs ${state.productDetail?.price}/${state.productDetail?.unit}',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const Gap(mediumSpacing),
                      Expanded(
                          child: ElevatedButton.icon(
                        icon: const Row(
                          children: [
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.black12),
                            Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                            Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                          ],
                        ),
                        iconAlignment: IconAlignment.end,
                        onPressed: () => context.read<AppBloc>().add(
                              AddCart(state.productDetail!),
                            ),
                        label: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.yellow),
                          ),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
