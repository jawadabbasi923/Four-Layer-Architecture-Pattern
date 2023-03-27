// ignore_for_file: use_key_in_widget_constructors

import 'package:dsadas/app/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/color.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function? onClick;
  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  final TextStyle? fontStyle;
  final Color? borderColor;
  final double? fontSize;

  final FontWeight? fontWeight;
  final double? minimumBtnWidth;
  final double? maximumBtnWith;
  final double? maxBtnHeight;
  final double? minBtnHeight;
  final String? fontFamily;

  const AppButton({
    required this.text,
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
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RawMaterialButton(
      constraints: BoxConstraints(
        minHeight: minBtnHeight ?? 52,
        maxHeight: maxBtnHeight ?? 52,
        maxWidth: maximumBtnWith ?? size.width,
        minWidth: minimumBtnWidth ?? size.width,
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
      child: Text(
        text.toString(),
        style: fontStyle ??
            TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 15,
              fontWeight: fontWeight ?? FontWeight.w700,
              fontFamily: fontFamily ?? AppTheme.mulsihFont,
            ),
      ),
    );
  }
}
