import 'package:app/Provider/increament_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  int num=0;
  @override
  Widget build(BuildContext context) {
    print('build');
    final dummy=Provider.of<IncrementProvider>(context,listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

           dummy.increment();

        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Consumer<IncrementProvider>(

          builder: (context,value,child)
          {
            print('build only text widget');
            return Text('${value.getNum()}',style: TextStyle(
                fontSize: 50
            ),);
          },

        )
      ),
    );
  }
}
