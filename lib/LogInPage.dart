import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          title: const Text('Employee Login',
              style: TextStyle(fontWeight: FontWeight.w500)),
          leading: const Icon(Icons.train),
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 400, top: 200),
              height: 50,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      icon: Icon(Icons.person)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 400, top: 50),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      icon: Icon(Icons.lock)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 400, top: 30),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      elevation: 10,
                      textStyle: const TextStyle(fontWeight: FontWeight.w800)),
                  child: const Text('Login')),
            )
          ],

          //backgroundColor: background,
        ));
  }
}
