import 'package:flutter/material.dart';

class TextEditingControllerScreen extends StatefulWidget {
  const TextEditingControllerScreen({super.key});

  @override
  State<TextEditingControllerScreen> createState() =>
      _TextEditingControllerScreenState();
}

class _TextEditingControllerScreenState
    extends State<TextEditingControllerScreen> {
  TextEditingController fieldValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                fieldValue.text = value;
              });

              print(fieldValue.text);
            },
            // controller: fieldValue,
          ),
          Text(fieldValue.text),
        ],
      ),
    );
  }
}
