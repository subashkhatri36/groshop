import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:groshop/cores/assets/app_assets.dart';
import 'package:groshop/cores/bloc/core_bloc.dart';
import 'package:groshop/cores/components/appbar_widget.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/dimension/dimension.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.backIconClick,
  }) : super(key: key);
  final Function()? backIconClick;
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
                    text: 'PROFILE',
                    icon: Icons.more_vert,
                    backIconClick: backIconClick,
                  ),
                  const Gap(smallSpacing),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(profileImage),
                          radius: 80,
                        ),
                        const Gap(mediumSpacing),
                        const Text(
                          'Cheerag Bishowkarma',
                          style: textStyle,
                        ),
                        const Gap(mediumSpacing),
                        Container(
                          padding: const EdgeInsets.all(largeSpacing),
                          margin: const EdgeInsets.symmetric(
                              horizontal: largeSpacing),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Age: 26',
                                style: textStyle,
                              ),
                              Gap(smallSpacing),
                              Text(
                                'Location: Australia',
                                style: textStyle,
                              ),
                              Gap(smallSpacing),
                              Text(
                                'Phone Number: 985******',
                                style: textStyle,
                              ),
                              Gap(smallSpacing),
                              Text(
                                'Phone Number: 985******',
                                style: textStyle,
                              ),
                              Gap(smallSpacing),
                            ],
                          ),
                        ),
                        const Gap(mediumSpacing),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
