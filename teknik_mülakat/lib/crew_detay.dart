import 'dart:convert';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class CrewDetay extends StatefulWidget {
  const CrewDetay({
    Key? key,
  }) : super(key: key);

  @override
  State<CrewDetay> createState() => _CrewDetayState();
}

_navigatetohome() async {
  await Future.delayed(const Duration(seconds: 3), () {});
}

class _CrewDetayState extends State<CrewDetay> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crew Detay'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return crewsJsonListesi();
          },
        ),
      ),
    );
  }

  crewsJsonListesi() async {
    String okunanString =
        await DefaultAssetBundle.of(context).loadString('assets/crews.json');
    var jsonObject = jsonDecode(okunanString);
    //(jsonObject as List).map((e) => debugPrint(e.toString()));
    List crewListesi = jsonObject;
    for (var i = 0; i < crewListesi.length; i++) {
      debugPrint(crewListesi[i]);
    }
  }

  crewsJsonOku() async {
    // ignore: unused_local_variable
    var yeniCrewId = obs;
    String okunanString =
        await DefaultAssetBundle.of(context).loadString('assets/crews.json');
    var jsonObject = jsonDecode(okunanString);
    //(jsonObject as List).map((e) => debugPrint(e.toString()));
    List crewListesi = jsonObject;
    for (var i = 0; i < crewListesi.length; i++) {
      debugPrint(crewListesi.where((obs) => yeniCrewId = obs).toString());
    }
  }
}
