import 'package:dsadas/models/login/user.dart';
import 'package:dsadas/services/firebase/login/login_repo.dart';
import 'package:dsadas/services/firebase/login/login_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/error/failures.dart';
import '../../services/local/local_storage.dart';

class LoginController extends GetxController {
  SessionManager sessionManager = SessionManager();
  LoginRepository loginRepository = LoginRepositoryImpl();
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
      await Future.delayed(const Duration(seconds: 3));
      isLoading.value = false;
    }
  }

  googleLogin() async {
    try {
      isLoading.value = true;
      final user = await loginRepository.loginGoogle();
      user.fold(
        (failure) => throw failure,
        (user) => {
          saveCustomer(user, user.customerId!),
          Get.snackbar('Success', 'Login successfully'),
        },
      );
      isLoading.value = false;
    } catch (e) {
      if (e is ServerFailure) {
        Get.snackbar('Error', e.toString());
      } else {
        Get.snackbar('Error', 'Something went wrong');
      }
      isLoading.value = false;
    }
  }

  saveCustomer(User user, String token) {
    sessionManager.saveFCMToken(token: token);
    sessionManager.saveUserId(userID: user.customerId.toString());
    sessionManager.saveData(SessionKeys.loginUser, user);
  }
}
