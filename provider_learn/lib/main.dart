import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/mycounter.dart';

import 'next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCounter>(
      create: (context) => MyCounter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<MyCounter>(
          builder: (context, mycounter, child) {
            return Text("${mycounter.counter}");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyCounter>(
              builder: (context, mycounter, child) {
                return Text("${mycounter.counter}");
              },
            ),
            Consumer<MyCounter>(
              builder: (context, mycounter, child) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    mycounter.inc();
                  },
                );
              },
            ),
            Consumer<MyCounter>(
              builder: (context, mycounter, child) {
                return Text("${mycounter.counter}");
              },
            ),
          ],
        ),
      ),
    );

  }
}
