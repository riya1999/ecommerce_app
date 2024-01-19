import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.padding ,
    this.margin,
    this.child,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.showBorder = false,
    this.borderColor = TColors.darkGray,

  });

  final double? height;
  final double? width;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
