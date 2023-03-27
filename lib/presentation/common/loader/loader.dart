// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:dsadas/app/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/color.dart';

class AppLoader extends StatelessWidget {
  String? loadingValue;

  AppLoader({this.loadingValue = 'Loading...'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColor.colorPrimary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColor.white),
            strokeWidth: 2,
          ),
          const SizedBox(height: 12),
          Text(
            loadingValue!,
            style: const TextStyle(
              color: AppColor.white,
              fontSize: 16,
              fontFamily: AppTheme.mulsihFont,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
