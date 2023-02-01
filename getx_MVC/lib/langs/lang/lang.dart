import 'package:get/get.dart';

class LongTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"Hello": "مرحبا", "lang view": "اللغة"},
        "en": {"Hello": "Hello", "lang view": "Lang"},
        "en_US": {"Hello": "hi", "lang view": "Lang"},
      };
}
