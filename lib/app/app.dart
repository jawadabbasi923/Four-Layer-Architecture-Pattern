import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routing/app_pages.dart';
import '../utils/app_strings.dart';
import '../utils/language.dart';

class SCA extends StatelessWidget {
  const SCA({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppText.APP_NAME,
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      initialRoute: RoutePages.INITIAL,
      getPages: RoutePages.routes,
    );
  }
}
