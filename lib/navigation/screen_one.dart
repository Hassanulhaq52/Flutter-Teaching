import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Center(
            child: Container(

              color: Colors.red,
              child: Text('Screen One'),



            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ScreenOne(),
                //     ));
                Navigator.pop(context);
              },
              child: Text('Go Back'))

        ],
      ),

    );
  }
}
