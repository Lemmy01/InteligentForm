import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/core/constants/app_number_constants.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc.dart';

import '../../../../../core/background_widgets/create_field_background_widget.dart';
import '../../../../../core/constants/other_constants.dart';
import '../../../../../core/shared_widgets/app_sized_boxes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthenticationBloc>().add(
                    const LogoutEvent(),
                  );
            },
          )
        ],
      ),
      body: CreateFieldBackGroundWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppNumberConstants.pageHorizontalPadding,
            vertical: AppNumberConstants.pageVerticalPadding,
          ),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(AppNumberConstants.mediumTilePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                OtherConstants.formImage,
                              ),
                            ),
                          ),
                          AppSizedBoxes.kHSmallBox(),
                          Text(
                            //TODO George Luta :
                            'Name : George Luta',
                            style: TextStyle(
                              fontSize: FontConstants.largeFontSize,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      AppSizedBoxes.kSmallBox(),
                      Text(
                        'Account Type: Admin',
                        style: TextStyle(
                          fontSize: FontConstants.smallFontSize,
                        ),
                      ),
                      Text(
                        'Address : 1234, 5th Avenue, New York, USA',
                        style: TextStyle(
                          fontSize: FontConstants.smallFontSize,
                        ),
                      ),
                      Text(
                        'Email Address: djktdkj@kub.drr',
                        style: TextStyle(
                          fontSize: FontConstants.smallFontSize,
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
    );
  }
}
