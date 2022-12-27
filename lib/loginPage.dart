import 'dart:html';

import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

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
                child:
                    Container(
                      height: 574,width: 1320,
                      child: FittedBox(
                        child: Image.asset('purpletrain.jpg'),
                        fit: BoxFit.fill,
                      ),
                      // child: Image(
                      //   image: AssetImage('lib/images/portadaSchamann5.png'),
                      //   alignment: Alignment.center,
                      //   height: double.infinity,
                      //   width: double.infinity,
                      //   fit: BoxFit.fill,
                      // ),
                    //   foregroundDecoration:  BoxDecoration(
                    //     image: DecorationImage(
                    //         image: Image.asset('purpletrain.jpg'),
                    //         fit: BoxFit.fill),
                    // ),

              ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset('login.png',width: 200,),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          icon: Icon(
                            Icons.person,
                            color: background,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          icon: Icon(
                            Icons.lock,
                            color: background,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.tealAccent; //<-- SEE HERE
                        return null;
                      }),
                      backgroundColor: MaterialStateProperty.all(background),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.teal)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 15),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
