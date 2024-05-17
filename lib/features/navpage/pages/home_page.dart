import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/ColorApp/app_color.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/grid_view_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/shadow_text.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/features/navpage/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentSelectedProduct = categoryList[currentCategoryIndex].product;
    final topScrollMenu = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...categoryList
                .map((category) => InkWell(
                      onTap: () {
                        currentCategoryIndex = category.id - 1;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: smallSpacing, horizontal: largeSpacing),
                        margin: const EdgeInsets.symmetric(
                            horizontal: smallSpacing),
                        decoration: BoxDecoration(
                            color: (category.id - 1) == currentCategoryIndex
                                ? const Color(0xFFFAE61E)
                                : greyColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          category.category,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );

    return GroshopPage(
      padding: largeSpacing / 2,
      vpadding: largeSpacing / 2,
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWidget(),
          const Gap(smallSpacing),
          topScrollMenu,
          const Gap(smallSpacing),
          const ShadowText(
            'Found more\nfruits !',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          Expanded(
            child:
                GridViewWidget(currentSelectedProduct: currentSelectedProduct),
          ),
        ],
      ),
    );
  }
}
