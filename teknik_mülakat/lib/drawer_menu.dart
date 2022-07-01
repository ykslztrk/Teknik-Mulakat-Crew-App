//import 'package:bloc/main.dart';
import 'package:bloc/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'crew.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const Text("Contracts"),
          const Text("CRM"),
          const Text("Vessel"),
          ListTile(
            leading: const Icon(Icons.accessibility_new),
            title: const Text("Crew"),
            onTap: () {
              Get.to(const Crew());
            },
          ),
          const Text("Marine"),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Ayarlar"),
            onTap: () {
              Get.to(const Settings());
            },
          ),
        ],
      ),
    );
  }
}
