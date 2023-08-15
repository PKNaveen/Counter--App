import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xffab2bc1), Color(0xffea296a)],
        stops: [0, 1],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter"),
        ),
        backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText('$counter',
                      textStyle: const TextStyle(
                          fontSize: 85, fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: increment,
                    tooltip: "increment",
                    backgroundColor: Colors.purple,
                    child: const Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: decrement,
                    tooltip: "decrement",
                    backgroundColor: Colors.purple,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
