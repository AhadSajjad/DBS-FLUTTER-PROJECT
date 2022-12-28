import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import "package:learning/homepage.dart";
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Material materialButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context)=> OnboardingPage(),
          '/second': (context)=>HomePage(),
        },
    );
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),()=>
        Navigator.pushNamed(context, '/second'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("DEEZ RAILWAYS",
        //       style: TextStyle(fontWeight: FontWeight.w500)),
        //   leading: const Icon(Icons.train),
        //   backgroundColor: background,
        //   foregroundColor: Colors.white,
        //   shadowColor: Colors.white,
        // ),
        backgroundColor: background,
        body: Stack(
          children: [
            Container(
              height: 800,
              width: 1300,
              margin: const EdgeInsets.only(top: 0.0),
              decoration: BoxDecoration(
                color: background,
                border: Border.all(
                  width: 0.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Icon(Icons.train_rounded,size: 250,color: Colors.white,),
                  Text("Deez Railways",style:GoogleFonts.satisfy(textStyle:TextStyle(
                  fontSize: 60,
                      color: Colors.white, fontWeight: FontWeight.bold)),),
              ],
              ),
              ),
          ],
        ),
      ),

    );
  }
}


// FadeInImage.assetNetwork(
// placeholder: "assets/thomas.png",
// height: 300,
// image:
// 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d5a30244-7dcd-4acc-a472-cbd2bd37a1dc/d9bzdfr-a8f3182d-af2e-458c-8911-4e31f2764fda.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Q1YTMwMjQ0LTdkY2QtNGFjYy1hNDcyLWNiZDJiZDM3YTFkY1wvZDliemRmci1hOGYzMTgyZC1hZjJlLTQ1OGMtODkxMS00ZTMxZjI3NjRmZGEuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.aTnZYYN_dCMj50kuLcAddNCOl-Kp3iI8yN-V6G5B_l4',
// width: 500),

