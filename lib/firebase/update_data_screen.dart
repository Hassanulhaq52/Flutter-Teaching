

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateDataScreen extends StatefulWidget {
  const UpdateDataScreen({super.key, required this.docId, required this.name});

  final String docId;
  final String name;

  @override
  State<UpdateDataScreen> createState() => _UpdateDataScreenState();
}

class _UpdateDataScreenState extends State<UpdateDataScreen> {
  String? updatedName;

  @override
  void initState() {
    // TODO: implement initState

    updatedName = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              updatedName = value;
            },
            controller: TextEditingController(text: updatedName),
          ),
          ElevatedButton(
            onPressed: () async {
              await FirebaseFirestore.instance
                  .collection('userData')
                  .doc(widget.docId)
                  .update({'name': updatedName});
              Navigator.pop(context);
            },
            child: Text('Update'),
          )
        ],
      ),
    );
  }
}
