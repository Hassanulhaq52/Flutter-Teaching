import 'package:app/firebase/update_data_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchDataScreen extends StatelessWidget {
  const FetchDataScreen({super.key});

  void deleteData(String docId) {
    FirebaseFirestore.instance.collection('userData').doc(docId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('userData').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    snapshot.data!.docs[index]['name'],
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      deleteData(snapshot.data!.docs[index].id);
                    },
                  ),
                  leading: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.yellow,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateDataScreen(
                                docId: snapshot.data!.docs[index].id,
                                name: snapshot.data!.docs[index]['name']),
                          ));
                    },
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
