import 'package:flutter/material.dart';
import 'package:week2/counter_page.dart';
import 'package:week2/home.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        CounterPage.id:(context) => const CounterPage(name:'counter'),
      },
    );
  }
}
