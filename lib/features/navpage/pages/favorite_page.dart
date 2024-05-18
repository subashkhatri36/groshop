import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/grid_view_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key, required this.backIconClick}) : super(key: key);
  final Function()? backIconClick;

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
                    text: 'Favourite',
                    icon: Icons.more_vert,
                    backIconClick: widget.backIconClick,
                  ),
                  const Gap(smallSpacing),
                  Expanded(
                    child: GridViewWidget(
                      currentSelectedProduct: state.favroitList ?? [],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
