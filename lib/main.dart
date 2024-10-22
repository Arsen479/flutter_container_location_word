import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 19, 103, 212)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'My first project'),
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Container(
                alignment: Alignment(0, 0),
                height: 150,
                width: 150,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(color:Colors.white),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(-1, -1),
                height: 150,
                width: 150,
                color: Colors.yellow,
                padding: const EdgeInsets.all(5),
                child: const Text('Hello World'),
              ),
              Container(
                alignment: Alignment(1, 1),
                height: 150,
                width: 150,
                color: Colors.green,
                padding: const EdgeInsets.all(5),
                child: const Text('Hello World'),
              ),
            ])));
  }
}
