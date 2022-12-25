import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
            child:ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Navigate back to first route when tapped.
            },
            child: const Text('Go back!'),
          ),
        ),
      ),
    );
  }
}
