import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";

class NewBookingPage extends StatelessWidget {
  const NewBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DEEZ RAILWAYS",
              style: TextStyle(fontWeight: FontWeight.w500)),
          leading: const Icon(Icons.train),
          backgroundColor: background,
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
        ),
        backgroundColor: background,
        body: Stack(
          children: [
            Center(
                child: Column(
              children: [
                SizedBox(height: 50),
                const Text(
                  "POPULAR DESTINATIONS",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Row(children: [
                  Container(
                      margin: EdgeInsets.all(30),
                      width: 300,
                      height: 300,
                      child: Image.asset('destination4.jpg')),
                  Container(
                      margin: EdgeInsets.all(30),
                      width: 300,
                      height: 300,
                      child: Column(children: [
                        Image.asset('destination8.jpg'),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'From Karachi',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'From Lahore',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'From Multan',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )))
                      ])),
                  Container(
                      margin: EdgeInsets.all(30),
                      width: 300,
                      height: 300,
                      child: Column(children: [
                        Image.asset('destination8.jpg'),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'From Karachi',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'From Lahore',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'From Multan',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )))
                      ]))
                ])
              ],
            ))
          ],
        ));
  }
}
