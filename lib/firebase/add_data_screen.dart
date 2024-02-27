import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddDataScreen extends StatelessWidget {
  AddDataScreen({super.key});

  String? name;

  static String collectionName = 'userData';
  CollectionReference info =
      FirebaseFirestore.instance.collection(collectionName);

  Future<dynamic> addData() {
    return info.add({'name': name});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              name = value;
            },
          ),
          ElevatedButton(
              onPressed: () async {
                // final ad = await addData();
                // ad();

                addData();
              },
              child: Text('Add'))
        ],
      ),
    );
  }
}
