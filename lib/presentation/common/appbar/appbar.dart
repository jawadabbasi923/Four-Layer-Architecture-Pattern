import 'package:dsadas/app/theme/color.dart';
import 'package:dsadas/app/theme/theme.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  final String title;
  final Widget? sufixWidget;
  final Widget? prefixWidget;
  final Color? backgroudColor;
  final EdgeInsets? edgeInsets;
  final bool? showLeading;
  final bool? showBorderBottom;
  const AppBarItem({
    super.key,
    required this.title,
    this.sufixWidget,
    this.prefixWidget,
    this.showLeading = true,
    this.edgeInsets,
    this.backgroudColor,
    this.showBorderBottom = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showLeading == true
          ? Padding(
              padding: const EdgeInsets.only(left: 26),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.colorOnSecondary,
                  size: 15,
                ),
              ),
            )
          : prefixWidget ?? const SizedBox(),
      elevation: 0,
      backgroundColor: backgroudColor ?? Colors.white,
      shape: Border(
        bottom: BorderSide(
          color: showBorderBottom == true
              ? AppColor.colorTextLight3
              : Colors.transparent,
          width: 1,
        ),
      ),
      centerTitle: true,
      title: Text(
        title.toString(),
        style: const TextStyle(
          color: AppColor.colorOnSecondary,
          fontFamily: AppTheme.mulsihFont,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      actions: [
        sufixWidget != null
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: sufixWidget!,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
