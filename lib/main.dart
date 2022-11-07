import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemnagement/Screens/SecondScreen.dart';
import 'package:statemnagement/providers/shopping_card_provider.dart';
import 'Screens/FirstScreen.dart';
import 'providers/counter_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyFirstScreen(),
        '/Second': (context) => const MySecondScreen(),
      },
    );
  }
}
