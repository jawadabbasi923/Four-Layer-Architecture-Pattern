// ignore_for_file: equal_keys_in_map

import 'package:get/get.dart';

import 'app_strings.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          AppText.APP_NAME: 'SCA Flutter App',
        },
        'ur': {
          AppText.APP_NAME: 'ایس سی اے فلٹر ایپ',
        },
      };
}
