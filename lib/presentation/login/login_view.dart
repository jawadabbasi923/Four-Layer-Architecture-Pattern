// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:dsadas/app/theme/color.dart';
import 'package:dsadas/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/login/login_controller.dart';
import '../../utils/app_strings.dart';
import '../common/appbar/appbar.dart';
import '../common/buttons/app_button.dart';
import '../common/buttons/app_icon_button.dart';
import '../common/loader/loader.dart';
import '../common/text_fields/app_field.dart';

class LoginView extends StatelessWidget {
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: _appBar,
      body: _body,
    );
  }

  PreferredSize get _appBar => PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: const AppBarItem(
          title: 'Login',
          showBorderBottom: false,
          showLeading: false,
        ),
      );

  Widget get _body => Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              height: Get.height - 102,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 33),
                  AppTextField(
                    hintText: AppText.ENTER_HINT,
                    labelText: AppText.EMAIL,
                    controller: loginController.userNameController,
                  ),
                  SizedBox(height: 10),
                  AppTextField(
                    hintText: AppText.ENTER_PASSWORD,
                    labelText: AppText.PASSWORD,
                    isObscure: true,
                    controller: loginController.passwordController,
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      AppText.FORGOT_PASSWORD,
                      style: AppTheme.normalDarkTextStyle(
                        textColor: AppColor.colorPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  AppButton(
                    minBtnHeight: 50,
                    maxBtnHeight: 50,
                    text: AppText.LOGIN,
                    onClick: () {
                      FocusScope.of(Get.context!).unfocus();
                      loginController.login();
                    },
                  ),
                  SizedBox(height: 30),
                  socialButtons(),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.DONT_ACCOUNT,
                        style: AppTheme.normalDarkTextStyle(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          AppText.CREATE_ACCOUNT,
                          style: AppTheme.normalDarkTextStyle(
                            textColor: AppColor.colorPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => loginController.isLoading.value ? AppLoader() : Container(),
          )
        ],
      );

  socialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(
          icon: Icons.facebook,
          iconSize: 30,
          color: AppColor.colorFacebook,
          onClick: () {
            FocusScope.of(Get.context!).unfocus();
          },
        ),
        SizedBox(width: 15),
        SocialButton(
          icon: Icons.apple,
          iconSize: 30,
          color: AppColor.black,
          onClick: () {
            FocusScope.of(Get.context!).unfocus();
          },
        ),
      ],
    );
  }
}
