import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemnagement/providers/shopping_card_provider.dart';

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping cart"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            Text("${context.watch<ShoppingCart>().cart}"),
            Text("${context.watch<ShoppingCart>().count}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ShoppingCart>().addItem("lmao"),
        child: const Icon(Icons.add, color: Colors.redAccent,),
      ),
    );
  }
}