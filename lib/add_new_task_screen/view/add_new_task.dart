import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:new_app/first_screen/widgets/my_button.dart';

class AddNewTaskName extends StatelessWidget {
  final controller;
  VoidCallback? onSave;
  VoidCallback? onCancel;

  AddNewTaskName({
    super.key,
    this.controller,
    this.onSave,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FFFFFF'),
      appBar: AppBar(
        title: const Text('Add New Task'),
        backgroundColor: HexColor("#3556AB"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19, left: 20, right: 298),
            child: const Text(
              "Task Name",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 15),
            child: SizedBox(
              height: 69,
              width: 380,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 565, left: 30, right: 19),
            child:

                // save button
                MyButton(text: "Done", onPressed: onSave!),
          ),
        ],
      ),
    );
  }
}
