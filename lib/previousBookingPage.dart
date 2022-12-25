import 'package:flutter/material.dart';



class PreviousBookingPage extends StatefulWidget {
  const PreviousBookingPage({Key? key}) : super(key: key);

  @override
  State<PreviousBookingPage> createState() => _PreviousBookingPageState();
}

class _PreviousBookingPageState extends State<PreviousBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("PREV BOOKING PAGE", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}