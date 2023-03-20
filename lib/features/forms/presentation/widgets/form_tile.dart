import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/font_constants.dart';
import 'package:inteligent_forms/core/shared_widgets/app_sized_boxes.dart';

import '../../../../core/constants/app_number_constants.dart';
import '../../../../core/helpers/concatinate_sctrings.dart';
import '../../domain/entities/form_entity.dart';

class FormTile extends StatelessWidget {
  const FormTile({
    super.key,
    required this.formEntity,
  });

  final FormEntity formEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppNumberConstants.mediumTileRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppNumberConstants.longTilePadding,
          vertical: AppNumberConstants.mediumTilePadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formEntity.title,
              style: TextStyle(
                fontSize: FontConstants.mediumFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            AppSizedBoxes.kSmallBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Wrap(
                    children: [
                      Text(
                        concatinateStringsComma(formEntity.dynamicFieldNames),
                        style: TextStyle(
                          fontSize: FontConstants.smallFontSize,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  formEntity.formattedDate,
                  style: TextStyle(
                    fontSize: FontConstants.smallFontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
