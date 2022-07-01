import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'crew.dart';
import 'crew_detay.dart';

class CrewEdit extends StatefulWidget {
  const CrewEdit({Key? key}) : super(key: key);

  @override
  State<CrewEdit> createState() => _CrewEditState();
}

class _CrewEditState extends State<CrewEdit> {
  late TextEditingController _namecontroller;
  @override
  void initState() {
    super.initState();
    _namecontroller = TextEditingController(text: '$Crew(crewId: crewId)');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crew Edit'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          TextField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            maxLength: 10,
            maxLines: 1,
            onChanged: (String deger) {},
          ),
        ],
      ),
    );
  }
}
