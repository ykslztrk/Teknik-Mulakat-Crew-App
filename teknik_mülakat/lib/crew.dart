import 'package:bloc/popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'crew_detay.dart';
import 'crew_edit.dart';

class Crew extends StatefulWidget {
  const Crew({Key? key}) : super(key: key);

  @override
  State<Crew> createState() => _CrewState();
}

class _CrewState extends State<Crew> {
  void onInit() {
    _waitForLoading();
  }

  _waitForLoading() async {
    await Future.delayed(const Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crew"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Crew1"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
          ListTile(
            title: const Text("Crew2"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
          ListTile(
            title: const Text("Crew3"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
          ListTile(
            title: const Text("Crew4"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
          ListTile(
            title: const Text("Crew5"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
          ListTile(
            title: const Text("Crew6"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
          ListTile(
            title: const Text("Crew7"),
            trailing: PopUpMenu(
              menuList: [
                PopupMenuItem(
                  child: ListTile(
                    title: const Text('Edit Crew'),
                    onTap: () {
                      Get.to(const CrewEdit());
                    },
                  ),
                )
              ],
            ),
            onTap: () {
              Get.to(const CrewEdit());
            },
          ),
        ],
      ),
    );
  }
}
