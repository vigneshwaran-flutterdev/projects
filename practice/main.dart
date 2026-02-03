import 'package:flutter/material.dart';
import 'package:learning/Details.dart';
import 'package:learning/inital.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Details(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntialPage(),
      ),
    );
  }
}
