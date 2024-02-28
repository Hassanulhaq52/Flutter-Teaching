import 'dart:io';

import 'package:app/firebase/controller.dart';
import 'package:app/firebase/model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class AddImageScreen extends StatefulWidget {
  const AddImageScreen({super.key});

  @override
  State<AddImageScreen> createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<AddImageScreen> {
  File? userImage;
  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: ()async{
                XFile? pickImage = await ImagePicker().pickImage(source: ImageSource.camera);
                if(pickImage != null){
                  File convertedFile = File(pickImage.path);
                  setState(() {
                    userImage = convertedFile;
                  });
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Image Not Picked")));
                }
              },
              child: CircleAvatar(
                radius: 40,
                backgroundImage: userImage != null ? FileImage(userImage!) : null,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          TextFormField(
            controller: userName,
          ),

          ElevatedButton(onPressed: (){
            DataWithImage.AddUserData(AddDataModel(
            name: userName.text,
              userImage: userImage
            ));
    }, child: Text("Add"))
        ],
      ),

    );
  }
}
