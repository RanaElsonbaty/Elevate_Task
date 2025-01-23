import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_root/core/theming/styles.dart';
import 'package:task_root/core/widgets/custom_icon_widget.dart';
import 'package:task_root/core/widgets/custom_text_widget.dart';

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomTextWidget(text: text, textStyle: TextStyles.font10PrimaryColor500Weight),
        CustomIconWidget(icon: Icons.star, color: Colors.yellow, size: 13.sp)
      ],
    );
  }
}
