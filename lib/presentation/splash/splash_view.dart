// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/theme/color.dart';
import '../../controller/splash/splash_controller.dart';
import '../../utils/app_assets.dart';

class SplashView extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Image.asset(
          AppAssets.splashScreen,
          width: Get.width,
          height: Get.height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
