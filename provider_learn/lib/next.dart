import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/mycounter.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<MyCounter>(builder: (context, mycounter, child) {
          return Text("${mycounter.counter}");
        }),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return Text("${mycounter.counter}");
            }),
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return RaisedButton(
                child: Text("Inc"),
                onPressed: (){
                  mycounter.inc();
                },
              );
            }),

          ],

        ),
      ),
    );
  }
}
