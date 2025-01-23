import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_root/core/theming/colors.dart';

class TextStyles {
  static final font10PrimaryColor500Weight = TextStyle(
      overflow: TextOverflow.ellipsis,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 10.sp,
      );
  static final font8PrimaryColor400WeightWithLine = TextStyle(
    overflow: TextOverflow.ellipsis,
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,
    fontSize: 8.sp,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.primaryColor
  );
}
