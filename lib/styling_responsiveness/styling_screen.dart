import 'package:flutter/material.dart';

class StylingScreen extends StatelessWidget {
  const StylingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(size: 40),
        iconTheme: IconThemeData(size: 50),
        title: Text(
          'AppBar',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
        leading: Icon(
          Icons.back_hand,
        ),
        actions: [
          Icon(
            Icons.person,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Heading 4',
            style: Theme.of(context).textTheme.headlineLarge,
          )),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
// borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                border: Border.all(
                  color: Colors.red,
                  width: 5,
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 10),
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 10)
                ]),
            height: 200,
            width: 200,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Button'),
            style: ElevatedButton.styleFrom(
                // primary: Colors.amberAccent.shade200,
                shadowColor: Colors.red,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                side: BorderSide(width: 5, color: Colors.blue),
                fixedSize: Size(200, 50)),
          )
        ],
      ),
    );
  }
}
