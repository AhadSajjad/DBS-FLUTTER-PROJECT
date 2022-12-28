import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'package:google_fonts/google_fonts.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                  height: 574, width: 1320,
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
                      style: GoogleFonts.lato(textStyle:TextStyle(
                          fontSize: 14,
                          color: Colors.white)),
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
                      style: GoogleFonts.lato(textStyle:TextStyle(
                          fontSize: 14,
                          color: Colors.white)),
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
                    onPressed: () {},
                    child: Text(
                      'LOGIN !',
                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                            fontSize: 14,
                            color: Colors.white)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
