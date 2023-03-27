import 'dart:async';

import 'package:get/get.dart';

import '../../routing/routes.dart';
import '../../services/local/local_storage.dart';

class SplashController extends GetxController {
  SessionManager sessionManager = SessionManager();
  @override
  void onReady() {
    startTime();
    super.onReady();
  }

  startTime() async {
    Timer(const Duration(seconds: 4), loadNextScreen);
  }

  loadNextScreen() {
    if (sessionManager.isUserLogin) {
      Get.offAllNamed(AppRoutes.DASHBOARD);
    } else {
      Get.offAllNamed(AppRoutes.LOGIN);
    }
  }
}
