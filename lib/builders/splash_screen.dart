// // // import 'package:app/builders/future_builder_screen.dart';
// // // import 'package:flutter/material.dart';
// // //
// // // Future getScreen() {
// // //   return Future.delayed(Duration(seconds: 3), ()=> 'Hello');
// // // }
// // //
// // // class SplashScreen extends StatelessWidget {
// // //   const SplashScreen({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return FutureBuilder(
// // //       future: getScreen(),
// // //       builder: (context, snapshot) {
// // //         if (snapshot.hasData) {
// // //           return Future.delayed(Duration.zero, () {
// // //             Navigator.pushReplacement(
// // //               context,
// // //               MaterialPageRoute(
// // //                 builder: (context) => FutureBuilderScreen(),
// // //               ),
// // //             );
// // //           });
// // //         }
// // //           // return Text('Error');
// // //
// // //       },
// // //     );
// // //   }
// // // }
// //
// //
// //
// // import 'package:app/builders/future_builder_screen.dart';
// // import 'package:flutter/material.dart';
// //
// // Future getScreen() {
// //   return Future.delayed(Duration(seconds: 3));
// // }
// //
// // class SplashScreen extends StatelessWidget {
// //   const SplashScreen({Key? key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return FutureBuilder(
// //       future: getScreen(),
// //       builder: (context, AsyncSnapshot snapshot) {
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           // Return a loading indicator while waiting for the future to complete
// //           return CircularProgressIndicator();
// //         } else if (snapshot.hasData) {
// //           // Once the future completes and has data, navigate to the next screen
// //           Future.delayed(Duration.zero, () {
// //             Navigator.pushReplacement(
// //               context,
// //               MaterialPageRoute(
// //                 builder: (context) => FutureBuilderScreen(),
// //               ),
// //             );
// //           });
// //           // Return an empty container while navigating
// //           return Container();
// //         } else if (snapshot.hasError) {
// //           // Handle errors if the future encounters any
// //           return Text('Error: ${snapshot.error}');
// //         } else {
// //           // If none of the above conditions are met, return a default widget
// //           return Text('Waiting for future to complete...');
// //         }
// //       },
// //     );
// //   }
// // }
//
//
//
//
// import 'package:app/builders/future_builder_screen.dart';
// import 'package:flutter/material.dart';
//
// Future getScreen() async{
//   await Future.delayed(Duration(seconds: 3));
//   return 'Hello from Splash Screen';
// }
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getScreen(),
//       builder: (context,snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           // Return a loading indicator while waiting for the future to complete
//           return CircularProgressIndicator();
//         } else if (snapshot.hasData) {
//           // Once the future completes and has data, navigate to the next screen
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => FutureBuilderScreen(),
//             ),
//           );
//           // Return an empty container while navigating
//           return Container();
//         } else if (snapshot.hasError) {
//           // Handle errors if the future encounters any
//           return Text('Error: ${snapshot.error}');
//         } else {
//           // If none of the above conditions are met, return a default widget
//           return Text('Waiting for future to complete...');
//         }
//       },
//     );
//   }
// }

import 'package:app/builders/future_builder_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulate some asynchronous operation
    Future.delayed(Duration(seconds: 3), () {
      // After 3 seconds, navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FutureBuilderScreen(),
        ),
      );
    });

    // Show your splash screen UI here
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
