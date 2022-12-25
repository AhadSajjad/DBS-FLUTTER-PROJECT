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
                const SizedBox(height: 30),
                const Text('Book Your Ticket!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 400, top: 20),
                      child: Container(
                          color: Colors.teal,
                          child: DropdownButton(items: [
                            DropdownMenuItem(
                                child: Text('From Multan',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )))
                          ], onChanged: (value) {}))),
                  Padding(
                      padding: EdgeInsets.only(left: 100, top: 20),
                      child: Container(
                          color: Colors.teal,
                          child: DropdownButton(items: [
                            DropdownMenuItem(
                                child: Text('To Aap Ke Dil Mein',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )))
                          ], onChanged: (value) {})))
                ]),
                const SizedBox(height: 50),
                const Text(
                  "POPULAR DESTINATIONS",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Row(children: [
                  Container(
                      margin: const EdgeInsets.all(30),
                      width: 300,
                      height: 500,
                      child: Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Column(children: [
                            Image.asset('destination4.jpg'),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('From:',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Islamabad',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Lahore',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    child: const Text(
                                      'Multan',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )))
                          ]))),
                  Container(
                      margin: const EdgeInsets.all(30),
                      width: 300,
                      height: 500,
                      child: Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Column(children: [
                            Image.asset('destination5.jpg'),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('From:',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Karachi',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Islamabad',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    child: const Text(
                                      'Multan',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )))
                          ]))),
                  Container(
                      margin: const EdgeInsets.all(30),
                      width: 300,
                      height: 500,
                      child: Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Column(children: [
                            Image.asset('destination8.jpg'),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('From:',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    child: const Text(
                                      'Karachi',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Lahore',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ))),
                            Container(
                                width: 200,
                                margin: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        elevation: 10,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Multan',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )))
                          ])))
                ])
              ],
            ))
          ],
        ));
  }
}
