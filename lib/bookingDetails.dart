import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/homepage.dart';
import "package:onboarding/onboarding.dart";
import 'package:google_fonts/google_fonts.dart';

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
            const SizedBox(height: 80),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 230),
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
                    margin: const EdgeInsets.only(left: 230),
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
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 230),
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
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(color: Colors.white70),
                          icon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 230),
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
                  onPressed: () {},
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
