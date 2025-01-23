import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCachedNetworkImageWidget extends StatelessWidget {
  const CustomCachedNetworkImageWidget({super.key, required this.url, required this.width});
  final String url;
  final double width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: url,
      width: width.w,
      errorWidget: (context, url, error) => Icon(Icons.error,size: 15.sp,),
    );
  }
}
