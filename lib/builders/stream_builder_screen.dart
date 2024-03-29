import 'dart:async';
import 'package:flutter/material.dart';

Stream<int> generateNumbers() async* {
  int count = 0;
  for (int i = 1; i < 20; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield count++;
  }
}

class StreamBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder Example'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateNumbers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Text('Number: ${snapshot.data}');
            }
          },
        ),
      ),
    );
  }
}
