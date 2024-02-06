import 'package:flutter/material.dart';

class TextEditingControllerScreen extends StatefulWidget {
  const TextEditingControllerScreen({super.key});

  @override
  State<TextEditingControllerScreen> createState() =>
      _TextEditingControllerScreenState();
}

class _TextEditingControllerScreenState
    extends State<TextEditingControllerScreen> {
  String fieldValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                fieldValue = value;
              });

              print(fieldValue);
            },
          ),
          Text(fieldValue),
        ],
      ),
    );
  }
}
