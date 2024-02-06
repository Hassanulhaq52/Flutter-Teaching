import 'package:app/navigation/screen_one.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.blue,
              child: Text('Home Screen'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ScreenOne(),
                //     ));
                Navigator.pushReplacementNamed(context, '/screenOne');
              },
              child: Text('Go to Screen One'))
        ],
      ),
    );
  }
}
