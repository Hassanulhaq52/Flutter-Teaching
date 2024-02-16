import 'package:app/api_integration/api_services/fact_services.dart';
import 'package:flutter/material.dart';

class FactScreen extends StatelessWidget {
  const FactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FactServices().getRandomFact(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text('${snapshot.data['fact']}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
