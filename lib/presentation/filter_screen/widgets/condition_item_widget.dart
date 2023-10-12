import '../models/condition_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hidden_store/core/app_export.dart';

// ignore: must_be_immutable
class ConditionItemWidget extends StatelessWidget {
  ConditionItemWidget(
    this.conditionItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ConditionItemModel conditionItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.all(16.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        conditionItemModelObj.newVar,
        style: TextStyle(
          color: conditionItemModelObj.isSelected
              ? appTheme.blueGray300
              : theme.colorScheme.primary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: conditionItemModelObj.isSelected,
      backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
      selectedColor: Colors.transparent,
      shape: conditionItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blue50,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
