import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text, required this.textStyle, this.numOfLines});
  final String text;
  final TextStyle textStyle;
  final int? numOfLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
     maxLines: numOfLines,
     style: textStyle,
    );
  }
}
