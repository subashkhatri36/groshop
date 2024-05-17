import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/dimension/dimension.dart';
import 'package:groshop/features/navpage/product_model.dart';
import 'package:groshop/router/router_path.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key, required this.currentSelectedProduct})
      : super(key: key);
  final List<ProductModel> currentSelectedProduct;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 1.0, // spacing between rows
        crossAxisSpacing: 1.0, // spacing between columns
      ),
      // padding: const EdgeInsets.all(1.0), // padding around the grid
      itemCount: currentSelectedProduct.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            context
                .read<AppBloc>()
                .add(AddProduct(currentSelectedProduct[index]));
            context.go(productDetailPagepath);
          },
          child: Container(
            height: 190,
            padding: const EdgeInsets.all(mediumSpacing),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, offset: Offset(1, 2)),
                ]),
            margin: const EdgeInsets.all(7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      currentSelectedProduct[index].productImage,
                    ),
                  ),
                ),
                Text(
                  currentSelectedProduct[index].name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 20),
                ),
                Text(
                    'Rs ${currentSelectedProduct[index].price}/${currentSelectedProduct[index].unit}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
