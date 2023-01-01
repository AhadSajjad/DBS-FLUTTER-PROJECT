import 'dart:convert';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'package:google_fonts/google_fonts.dart';
import 'bookingDetails.dart';
import 'employeelogin.dart';
import 'package:http/http.dart' as http;

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    // print(user.text);
    if (user.text == "" || pass.text == "") {
      Fluttertoast.showToast(
        msg: "All fields cannot be blank!",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 2,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      final response = await http.post(
        Uri.parse('http://localhost:5000/api/login'),
        body: json.encode({"username": user.text, "password": pass.text}),
        headers: {
          "Content-Type": "application/json",
        },
      );
      print(json.decode(response.body)['status']);
      if (json.decode(response.body)['status'] == true) {
        print('${response.body}');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const EmployeePage())); // PLEASE CHANGE THE ROUTE TO CORRECT PAGE AFTER THIS
      } else {
        print('Request failed with status: ${response.statusCode}');
        Fluttertoast.showToast(
          msg: "Login details incorrect!",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 2,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }

  bool _isObscure = true;
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
                  height: 574,
                  width: 1320,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('purpletrain.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'login_1.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
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
                      controller: user,
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 14, color: Colors.white)),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          icon: Icon(
                            Icons.person,
                            color: Colors.white70,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    //color: Colors.teal,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: pass,
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 14, color: Colors.white)),
                      cursorColor: Colors.white,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.white70,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 13.0),
                            child: IconButton(
                                color: Colors.white70,
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  Colors.white70;
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
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
                            side: const BorderSide(color: Colors.white)),
                      ),
                    ),
                    onPressed: () {
                      login();
                    },
                    child: Text(
                      'LOGIN !',
                      style: GoogleFonts.josefinSans(
                          textStyle:
                              TextStyle(fontSize: 14, color: Colors.white)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
