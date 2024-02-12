import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatefulWidget {
  const LayoutBuilderScreen({super.key});

  @override
  State<LayoutBuilderScreen> createState() => _LayoutBuilderScreenState();
}

class _LayoutBuilderScreenState extends State<LayoutBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 400 && constraints.maxWidth < 500) {
            return Container(
              width: 200,
              height: 200,
              color: Colors.green,
            );
          } else if (constraints.maxWidth > 500) {
            return Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                Text('dfdffd'),
              ],
            );
          } else {
            return Row(
              children: [
                Expanded(
                    child: Container(
                  height: 200,
                  color: Colors.yellow,
                )),
                Expanded(
                    child: Container(
                  height: 200,
                  color: Colors.red,
                )),
              ],
            );
          }
        },
      ),
    );
  }
}
