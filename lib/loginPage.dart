import 'dart:convert';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:http/http.dart' as http;
import 'api_connection/api_connection.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bookingDetails.dart';
import 'dart:convert';
import 'package:mysql1/mysql1.dart';
import 'sql.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  var Username;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  login() {
    if (username.text == '' || password.text == '') {
      Fluttertoast.showToast(
        msg: "Both fields cannot be blank!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16,
      );
    }
    else {
      // var url = "https://192.168.43.82/localconnect/login.php";
      // var response = http.get(Uri.parse(url));
      // //var data = json.decode(response.body);
      // Future <http
      // response.then(http.Response res)
      Future<String> fetchData() async {
        final client = HttpClient();
        final request = await client.getUrl(
            Uri.parse("https://10.7.40.45/localconnect/login.php"));
        final response = await request.close();
        return await response.transform(utf8.decoder).join();
        //return response;
      }
      fetchData().then((body) {
        var data = body;
        if (data == "Success") {
          Fluttertoast.showToast(
            msg: "Successful!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            fontSize: 16,);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  const BookingDetails()));
        }
        else {
          Fluttertoast.showToast(
            msg: "Please enter valid credentials!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            fontSize: 16,
          );
        }
      }
      );
    }
  }

  // bool inCorrectLogin = false;

  // Future<bool?> login({
  //   required MySql db,
  //   required TextEditingController usernameController,
  //   required TextEditingController passwordController,
  // }) async {
  //   db.getConnection().then((conn) async {
  //     var results = await conn.query(
  //         'select Username, Password from employee where username = \'${usernameController.text}\' and password = MD5(\'${passwordController.text}\')');
  //     if (results.isEmpty) {
  //       setState(() {
  //         inCorrectLogin = true;
  //         Fluttertoast.showToast(
  //           msg: "Please enter valid credentials!",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           fontSize: 16,
  //         );
  //       });
  //     } else {
  //               Fluttertoast.showToast(
  //                 msg: "Login Successful!",
  //                 toastLength: Toast.LENGTH_SHORT,
  //                 gravity: ToastGravity.CENTER,
  //                 fontSize: 16,);
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const BookingDetails()));
  //     }
  //   });
  //   return null;
  // }

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
                      controller: username,
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
                      controller: password,
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