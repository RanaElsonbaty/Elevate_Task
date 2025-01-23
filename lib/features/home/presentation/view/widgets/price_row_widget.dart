import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_root/core/theming/styles.dart';
import 'package:task_root/core/widgets/custom_text_widget.dart';

class PriceRowWidget extends StatelessWidget {
  const PriceRowWidget({super.key, required this.currentPrices, required this.oldPrices});
  final String currentPrices;
  final String oldPrices;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextWidget(text: currentPrices, textStyle: TextStyles.font10PrimaryColor500Weight),
        SizedBox(width: 10.w,),
        CustomTextWidget(text: oldPrices, textStyle: TextStyles.font8PrimaryColor400WeightWithLine),
      ],
    );
  }
}
