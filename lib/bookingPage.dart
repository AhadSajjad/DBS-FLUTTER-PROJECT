import 'package:flutter/material.dart';


class NewBookingPage extends StatefulWidget {
  const NewBookingPage({Key? key}) : super(key: key);

  @override
  State<NewBookingPage> createState() => _NewBookingPageState();
}

class _NewBookingPageState extends State<NewBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("BOOKING PAGE", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
