import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "Ad": "Name",
          "Soyad": "Surname",
          "Ülke": "Nationality",
          "Sertifikalar": "Certificates"
        },
        'tr_TR': {
          "Ad": "Ad",
          "Soyad": "Soyad",
          "Ülke": "Ülke",
          "Sertifikalar": "Sertifikalar",
        }
      };
}
