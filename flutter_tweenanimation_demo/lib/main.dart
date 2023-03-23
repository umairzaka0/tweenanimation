import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var tween = Tween<double>(begin: 1, end: 14);
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Tween Animation'),
          ),
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        color: Colors.lime,
        child: TweenAnimationBuilder<double>(
          tween: tween,
          duration: const Duration(seconds: 2),
          builder: (context, value, child) => Transform.scale(
            alignment: Alignment.center,
            scale: value,
            child: child,
          ),
          child: const Icon(
            Icons.person_4,
            size: 25,
          ),
        ),
      )),
    );
  }
}
