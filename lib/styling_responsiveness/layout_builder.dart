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
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.5,
              // width: 200,
              // height: 200,
              color: Colors.green,
            );
          } else if (constraints.maxWidth > 500) {
            return AspectRatio(
              aspectRatio: 16 / 8,
              child: Container(
                // width: 200,
                // height: 200,
                color: Colors.blue,
              ),
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
