import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 0.7,
            child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                image: const DecorationImage(
                    image: AssetImage('images/banner.jpg'), fit: BoxFit.fill),
              ),
              width: 450,
              height: 100,
              margin: EdgeInsets.all(50),
              child: Text(
                'This is Margin',
                style: TextStyle(fontSize: 30),
                // textAlign: TextAlign.center,
              ),
            ),
          ),

          Container(
            // foregroundDecoration: BoxDecoration(color: Colors.red),

            alignment: Alignment.bottomRight,
            width: 450,
            height: 100,
            color: Colors.blue,
            padding: EdgeInsets.only(left: 50),
            child: Text(
              'This is Padding',
              style: TextStyle(fontSize: 30, color: Colors.white),
              // textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.yellow,
                child: Text('This is Sized Box'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              foregroundDecoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 60)]),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 60)]),
              width: 450,
              height: 200,
              // color: Colors.blue,
              // padding: EdgeInsets.only(left: 50),
              margin: EdgeInsets.all(50),
            ),
          ),
        ],
      ),
    );
  }
}
