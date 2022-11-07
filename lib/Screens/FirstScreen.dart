import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemnagement/providers/counter_provider.dart';
import 'SecondScreen.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "You have pushed the button this many times:${context.watch<Counter>().count}"),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, '/Second');},
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              child: const Text("Next Screen"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}