import 'package:flutter/material.dart';
//
// class StackScreen extends StatelessWidget {
//   const StackScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               Text('Row Demo'),
//               Stack(
//                 children: [
//
//                   Text('Demo1',style: TextStyle(
//                     fontSize: 20,
//                   ),),
//                   Text('Demo2',style: TextStyle(
//                     fontSize: 30,
//                   ),),
//                   Text('Demo3',style: TextStyle(
//                     fontSize: 40,
//                   ),),
//
//                 ],
//               )
//
//             ],
//
//           ),
//         )
//
//
//     //     Stack(
//     //   children: <Widget>[
//     //     Positioned(
//     //       top: 10.0,
//     //       left: 10.0,
//     //       child: Text('Child 1'),
//     //     ),
//     //     Positioned(
//     //       top: 50.0,
//     //       left: 50.0,
//     //       child: Text('Child 2'),
//     //     ),
//     //     // Container(
//     //     //   color: Colors.blue,
//     //     //   child: Text('Hello'),
//     //     // ),
//     //
//     //     // Add more children as needed
//     //   ],
//     // )
//         // Column(children: [
//         //
//         //   Container(
//         //
//         //     color: Colors.blue,
//         //
//         //   ),
//         //
//         //
//         //
//         // ],),
//
//         );
//   }
// }


class ThisApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget Example'),
        ),
        body: Stack(
          children: [
            // Background
            Container(
              color: Colors.blue,
            ),

            // Centered Text
            Positioned(
              top: 100.0,
              left: 50.0,
              child: Text(
                'Hello, Stack!',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),

            // Overlapping Image
            Positioned(
              bottom: 50.0,
              right: 50.0,
              child: Image.network(
                'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg',
                width: 100.0,
                height: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}