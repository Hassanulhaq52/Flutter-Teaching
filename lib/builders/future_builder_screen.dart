import 'package:flutter/material.dart';

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Hello from Future!");
}

class FutureBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder Example'),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return Text('Result: ${snapshot.data}');
            }
            return Center(
              child: Text('Unexpected Error'),
            );
          },
        ),
      ),
    );
  }
}
