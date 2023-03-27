// ignore_for_file: use_key_in_widget_constructors

import 'package:dsadas/app/theme/color.dart';
import 'package:dsadas/app/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextInputType? textInputType;
  final String? hintText;
  final int? maxLine;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? labelText;
  final bool? isObscure;

  const AppTextField({
    Key? key,
    this.textInputType,
    this.hintText,
    this.maxLine,
    this.controller,
    this.onChanged,
    this.labelText,
    this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: labelText == null ? false : true,
            child: Column(
              children: [
                Text(
                  labelText.toString(),
                  style: AppTheme.mediumDarkTextStyle(),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
          TextFormField(
            controller: controller,
            readOnly: false,
            style: const TextStyle(
              color: AppColor.colorOnSecondary,
              fontFamily: AppTheme.mulsihFont,
              fontSize: 14,
            ),
            autofocus: false,
            obscureText: isObscure ?? false,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColor.colorTextLight3,
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColor.colorTextLight3,
                  width: 1,
                ),
              ),
              constraints: const BoxConstraints(
                minHeight: 52,
                maxHeight: 52,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColor.colorTextLight3,
                  width: 1,
                ),
              ),
              fillColor: Colors.transparent,
              filled: false,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColor.colorTextLight3,
                  width: 1,
                ),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: AppColor.colorSecondary,
                fontFamily: AppTheme.mulsihFont,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
