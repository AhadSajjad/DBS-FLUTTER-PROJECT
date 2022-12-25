import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";

class BookTicket extends StatelessWidget {
  const BookTicket({Key? key}) : super(key: key);

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('trainImage2.jfif'), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
