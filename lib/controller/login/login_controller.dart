import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/local/local_storage.dart';

class LoginController extends GetxController {
  SessionManager sessionManager = SessionManager();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final isLoading = false.obs;

  validateLogin() {
    if (userNameController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter username');
      return false;
    } else if (passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter password');
      return false;
    }
    return true;
  }

  login() async {
    if (validateLogin()) {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 2));
      // saveCustomer({}, 'token_value');
      isLoading.value = false;
    }
  }

  saveCustomer(dynamic user, String token) {
    sessionManager.saveFCMToken(token: token);
    sessionManager.saveUserId(userID: user.customerId.toString());
    sessionManager.saveData(SessionKeys.loginUser, user);
  }
}
