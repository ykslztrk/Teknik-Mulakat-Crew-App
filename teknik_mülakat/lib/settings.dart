import 'package:bloc/languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'languages.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Settings',
      translations: Languages(),
      locale: Get.deviceLocale,
      home: FloatingActionButton(onPressed: () {
        Get.updateLocale(Get.locale == const Locale("tr", "TR")
            ? const Locale("en", "US")
            : Locale("tr", TR));
      }),
    );
  }
}
