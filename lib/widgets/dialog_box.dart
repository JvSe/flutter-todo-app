import 'package:flutter/material.dart';
import 'package:todoapp/widgets/button_widget.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add new Task",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonWidget(name: 'Save', onPressed: onSave),
              const SizedBox(
                width: 4,
              ),
              ButtonWidget(name: 'Save', onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
