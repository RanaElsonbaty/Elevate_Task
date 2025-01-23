import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_root/core/theming/colors.dart';
import 'package:task_root/core/theming/styles.dart';
import 'package:task_root/core/widgets/custom_cached_network_image_widget.dart';
import 'package:task_root/core/widgets/custom_text_widget.dart';
import 'package:task_root/features/home/data/model/products_model.dart';
import 'package:task_root/features/home/presentation/view/widgets/price_row_widget.dart';
import 'package:task_root/features/home/presentation/view/widgets/rating_row_widget.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({super.key, required this.productsModel, required this.index});
  final ProductsModel productsModel;
  final int index;
  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.productsModel.image !=null?
              Expanded(
                  child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCachedNetworkImageWidget(
                    url: widget.productsModel.image!, width:  80,
                  ),
                ],
              ))
              :SizedBox(),
              SizedBox(height: 5.h,),
              CustomTextWidget(text: widget.productsModel.title!,
                textStyle: TextStyles.font10PrimaryColor500Weight,numOfLines: 1,),
              CustomTextWidget(text: widget.productsModel.description!,
                textStyle: TextStyles.font10PrimaryColor500Weight,numOfLines: 1,),
              SizedBox(height: 5.h,),
              PriceRowWidget(currentPrices: "EGP ${widget.productsModel.price}",
                oldPrices: widget.productsModel.price.toString(),),
              SizedBox(height: 5.h,),
              RatingRowWidget(
                  text: "Review (${widget.productsModel.rating!.rate})"),
            ],
          ),
        ),
        Positioned(
            top: 5,
            right: 5,
            child: Container(
              height: 25.w,
              width: 25.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12, // Shadow color with opacity
                    blurRadius: 5, // How soft the shadow is
                    spreadRadius: 1, // How far the shadow spreads
                    offset: Offset(3, 3), // Position of the shadow (x, y)
                  ),
                ],
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.favorite_border,
                size: 18,
                color: AppColors.primaryColor,
              ),
            )
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.add,
              size: 20,
              color:AppColors.white,),
          ),
        )
      ],
    );
  }
}