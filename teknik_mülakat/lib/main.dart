import 'package:bloc/marine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'crew.dart';
import 'drawer_menu.dart';
import 'languages.dart';
import 'marine.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: const DrawerMenu(),
          appBar: AppBar(
            title: const Text("CREW APP"),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Crew',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Marine',
                icon: Icon(Icons.abc_rounded),
              ),
            ]),
          ),
          body: const Center(
              child: TabBarView(
            children: [
              Crew(
                crewId: 0,
              ),
              Marine()
            ],
          )),
        ),
      ),
    );
  }
}
