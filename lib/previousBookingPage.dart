import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'package:google_fonts/google_fonts.dart';

class PreviousBookingPage extends StatefulWidget {
  const PreviousBookingPage({Key? key}) : super(key: key);

  @override
  State<PreviousBookingPage> createState() => _PreviousBookingPageState();
}

class _PreviousBookingPageState extends State<PreviousBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Stack(children: [
          Center(
              child: Container(
            height: 574,
            width: 1320,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('purpletrain.jpg'),
            ),
          )),
          Center(
            child: Column(children: [
              SizedBox(height: 50),
              Text('REVIEW YOUR TICKET:',
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(color: Colors.white, fontSize: 42))),
              SizedBox(height: 100),
              Container(
                  //margin: EdgeInsets.only(left: 230),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      //color: Colors.teal,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 14, color: Colors.white)),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Booking ID",
                          icon: Icon(
                            Icons.train_rounded,
                            color: Colors.white70,
                          )),
                    ),
                  )),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            } //<-- SEE HERE
                            return null;
                          }),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF4A305D)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.white)),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('CHECK !',
                            style: GoogleFonts.josefinSans(
                                textStyle: TextStyle(
                                    fontSize: 14, color: Colors.white)))),
                    SizedBox(width: 10),
                    ElevatedButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            } //<-- SEE HERE
                            return null;
                          }),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF4A305D)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.white)),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('CANCEL TICKET !',style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                                fontSize: 14, color: Colors.white))))
                  ]),
            ]),
          )
        ]));
  }
}
