// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../app/theme/color.dart';

class SocialButton extends StatelessWidget {
  final Function? onClick;
  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  final TextStyle? fontStyle;
  final Color? borderColor;
  final double? fontSize;
  final IconData? icon;
  final double? iconSize;
  final FontWeight? fontWeight;
  final double? minimumBtnWidth;
  final double? maximumBtnWith;
  final double? maxBtnHeight;
  final double? minBtnHeight;
  final String? fontFamily;

  const SocialButton({
    required this.onClick,
    this.borderRadius,
    this.color = AppColor.colorPrimary,
    this.borderColor,
    this.fontStyle,
    this.textColor,
    this.minBtnHeight,
    this.maxBtnHeight,
    this.fontWeight,
    this.fontFamily,
    this.minimumBtnWidth,
    this.maximumBtnWith,
    this.fontSize,
    this.icon,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(
        minHeight: minBtnHeight ?? 50,
        maxHeight: maxBtnHeight ?? 50,
        maxWidth: maximumBtnWith ?? 50,
        minWidth: minimumBtnWidth ?? 50,
      ),
      onPressed: () => onClick?.call(),
      fillColor: color ?? AppColor.colorPrimary,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        side: BorderSide(
          width: 1,
          color: borderColor ?? color!,
        ),
      ),
      child: Icon(
        icon ?? Icons.arrow_forward,
        color: textColor ?? AppColor.white,
        size: iconSize ?? 25,
      ),
    );
  }
}
