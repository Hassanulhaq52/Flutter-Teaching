import 'package:app/firebase/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class DataWithImage {
  static void AddUserData(AddDataModel model) async {
    String userID = const Uuid().v1();
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("HassanFolder")
        .child(userID)
        .putFile(model.userImage!);
    TaskSnapshot taskSnapshot = await uploadTask;
    String imgUrl = await taskSnapshot.ref.getDownloadURL();

    Map<String, dynamic> dataAdd = {
      "userID": userID,
      "name": model.name,
      "image": imgUrl
    };

    FirebaseFirestore.instance.collection("userData").doc(userID).set(dataAdd);
  }
}
