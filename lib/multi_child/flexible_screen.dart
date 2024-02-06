import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible (
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
