import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'bookingPage.dart';
import 'previousBookingPage.dart';
import 'loginPage.dart';

  class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          // add tabBarTheme
          tabBarTheme: const TabBarTheme(
              labelColor: Colors.pink,
              labelStyle: TextStyle(color: Colors.pink), // color for text
              indicator: UnderlineTabIndicator( // color for indicator (underline)
                  borderSide: BorderSide(color: Colors.pink))),
          primaryColor: Colors.pink[800], // outdated and has no effect to Tabbar
          accentColor: Colors.cyan[600] // deprecated,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // title: const Text("HOME PAGE",
            //     style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
            //leading: const Icon(Icons.train),
            backgroundColor: background,
            foregroundColor: Colors.white,
            shadowColor: Colors.white,
            toolbarHeight: 0,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.airplane_ticket_rounded), text: "BOOK A TICKET",),
                Tab(icon: Icon(Icons.drive_file_move_sharp), text: "VIEW PREVIOUS TICKET"),
                Tab(icon: Icon(Icons.login_rounded), text: "EMPLOYEE LOGIN"),
              ],
            ),
          ),
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
              TabBarView(
                  children:[
                    NewBookingPage(),
                    PreviousBookingPage(),
                    LogInPage(),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}

