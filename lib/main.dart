// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 3, // Number of tabs
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Tab Bar Example'),
//             bottom: TabBar(
//               tabs: [
//                 Tab(text: 'Tab 1'),
//                 Tab(text: 'Tab 2'),
//                 Tab(text: 'Tab 3'),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               // Contents of Tab 1
//               Center(child: Text('Tab 1 Content')),
//
//               // Contents of Tab 2
//               Center(child: Text('Tab 2 Content')),
//
//               // Contents of Tab 3
//               Center(child: Text('Tab 3 Content')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:app/Provider/increament_provider.dart';
import 'package:app/controllers/text_editing_controller_screen.dart';
import 'package:app/drawer_screen.dart';
import 'package:app/layout.dart';
import 'package:app/multi_child/expanded_screen.dart';
import 'package:app/multi_child/stack_screen.dart';
import 'package:app/navigation/home_screen.dart';
import 'package:app/navigation/screen_one.dart';
import 'package:app/navigation/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'multi_child/gridview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_) => IncrementProvider(),
      child: MaterialApp(
        // initialRoute: '/',
        // routes: {
        //
        //   '/': (context) => HomeScreen(),
        //   '/screenOne': (context) => ScreenOne(),
        //   '/screenTwo': (context) => ScreenTwo(),
        //
        //
        // },
        home: TextEditingControllerScreen()
      ),
    );
  }
}
