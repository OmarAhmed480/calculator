import 'package:calculator/Until/app_color.dart';
import 'package:calculator/Until/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({
    super.key,
    required this.text,
    this.style,
    this.onPressed,
    this.backgroundColor,
    this.height,
    this.width,
    this.borderRadius,
  });

  final String text;
  final TextStyle? style;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 62.h,
      width: width ?? 62.w,
      child: FloatingActionButton(
        backgroundColor: backgroundColor ?? AppColor.grayColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
        ),
        onPressed: onPressed,
        child: Text(
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          text,
          style: style ?? AppStyle.medium32darkBlueColor,
        ),
      ),
    );
  }
}
