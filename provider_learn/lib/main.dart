import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/mycounter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Learn 1"),
      ),
      body: ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
        child: Center(
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
                  return IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      mycounter.bbc();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
