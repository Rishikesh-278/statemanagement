import 'package:flutter/material.dart';
//import 'package:provider/counter';



class FistScreen extends StatelessWidget {
  const FistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            Text("You pressed this screen $ many times")
          ],
        ),
      ),
    );
  }
}
