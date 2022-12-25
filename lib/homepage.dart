import 'package:flutter/material.dart';
import 'package:learning/LogInPage.dart';
import "package:onboarding/onboarding.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
            leading: const Icon(Icons.train),
            backgroundColor: background,
            foregroundColor: Colors.white,
            shadowColor: Colors.white,
            title: Text('Second Screen'),
          ),
          body: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 300, top: 200, right: 300),
                        child: Container(
                            height: 100,
                            width: 250,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    elevation: 10,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w800)),
                                child: Row(children: [
                                  Icon(Icons.train_outlined),
                                  Text('Book A Ticket')
                                ])))),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 300, top: 30, right: 300),
                        child: Container(
                            height: 100,
                            width: 250,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    elevation: 10,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w800)),
                                child: Row(children: [
                                  Icon(Icons.edit_note),
                                  Text('Check Already Booked Ticket')
                                ])))),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 300, top: 30, right: 300),
                        child: Container(
                            height: 100,
                            width: 250,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LogInPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    elevation: 10,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w800)),
                                child: Row(children: [
                                  Icon(Icons.person),
                                  Text('Login As Employee')
                                ]))))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
