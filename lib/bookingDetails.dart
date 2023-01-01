import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/homepage.dart';
import 'package:flutter/services.dart';
import "package:onboarding/onboarding.dart";
import 'package:google_fonts/google_fonts.dart';

var passengerid;

class BookingDetails extends StatefulWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {

  TextEditingController First_Name = TextEditingController();
  TextEditingController Last_Name = TextEditingController();
  TextEditingController Contact_No = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 0.0,
                  vertical: 0.0,
                ),
                child: Container(
                  height: 648,
                  width: 1320,
                  child: FittedBox(
                    child: Image.asset('purpletrain.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          Center(
              child: Column(children: [
            const SizedBox(height: 50),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.white;
                          } //<-- SEE HERE
                          return null;
                        }),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF4A305D)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.white)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Text('BACK!',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 14, color: Colors.white)))),
                ),
                SizedBox(
                  width: 430,
                ),
                Center(
                  child: Text("ENTER YOUR DETAILS:",
                      style: GoogleFonts.acme(
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.white))),
                ),
              ],
            ),
            const SizedBox(height: 130),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 0),
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.teal,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: First_Name,
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First Name',
                          hintStyle: TextStyle(color: Colors.white70),
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 130),
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.teal,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: Last_Name,
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last Name',
                          hintStyle: TextStyle(color: Colors.white70),
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 0),
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.teal,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: Contact_No,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Contact',
                          hintStyle: TextStyle(color: Colors.white70),
                          icon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 130),
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.teal,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: email,
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'E-mail',
                          hintStyle: TextStyle(color: Colors.white70),
                          icon: Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.white;
                      } //<-- SEE HERE
                      return null;
                    }),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF4A305D)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.white54)),
                    ),
                  ),
                  onPressed: () async {
                    if (First_Name.text == "" ||
                        Last_Name.text == "" ||
                        email.text == "" ||
                        Contact_No.text == "") {
                      Fluttertoast.showToast(
                        msg: "All fields cannot be blank!",
                        toastLength: Toast.LENGTH_SHORT,
                        timeInSecForIosWeb: 2,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else {
                      final response = await http.post(
                        Uri.parse('http://localhost:5000/api/bookingDetails'),
                        body: json.encode({
                          "First_Name": First_Name.text,
                          "Last_Name": Last_Name.text,
                          "Contact_No": Contact_No.text,
                          "email": email.text,
                        }),
                        headers: {
                          "Content-Type": "application/json",
                        },
                      );
                      var data = json.decode(response.body);
                      if (response.statusCode == 200) {
                        print('${response.body}');
                        passengerid = data['passenger'];
                        Widget _buildPopupDialog(BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xFF4A305D),
                            title: const Text(
                                'Following is your Passenger ID. Please get your ticket details from ticket viewer page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Text("Passenger ID: $passengerid", style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed))
                                          return Colors.white70; //<-- SEE HERE
                                        return null;
                                      }),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white)),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close',style: TextStyle(color: Color(0xFF4A305D)),),
                              ),
                            ],
                          );
                        }

                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      } else {
                        print('Request failed with status: ${response.statusCode}');
                      }
                    }
                  },
                  child: Text(
                    'BOOK TICKET',
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 14, color: Colors.white)),
                  )),
            ),
          ]))
        ],
      ),
    );
  }
}
