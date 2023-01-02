import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:onboarding/onboarding.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

class PreviousBookingPage extends StatefulWidget {
  const PreviousBookingPage({Key? key}) : super(key: key);

  @override
  State<PreviousBookingPage> createState() => _PreviousBookingPageState();
}

class _PreviousBookingPageState extends State<PreviousBookingPage> {
  TextEditingController passenger = TextEditingController();
  ScrollController _scrollController = ScrollController();
  var pass_id;
  var first_name;
  var last_name;
  var booking_id;
  var email;
  var contact;
  var booking_date;
  var seat;
  var coach;
  var price;
  var train;

  // Future bookingCheck() async {
  //   final response = await http.post(
  //     Uri.parse('http://localhost:5000/api/checkBooking'),
  //     body: json.encode({
  //       "booking_ID": booking.text,
  //     }),
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //   );
  //   var data = json.decode(response.body);
  //   if (json.decode(response.body)['status'] == true) {
  //     print('${response.body}');
  //
  //   } else {
  //     print('Request failed with status: ${response.statusCode}');
  //   }
  //
  //       pass_id = data['data'][0]['Passenger_ID'];
  //       first_name = data['data'][0]['First_Name'];
  //       last_name = data['data'][0]['Last_Name'];
  //       booking_id = data['data'][0]['Booking_ID'];
  //       email = data['data'][0]['email'];
  //       contact = data['data'][0]['Contact_No'];
  //       booking_date = data['data'][0]['Booking_Date'];
  //       seat = data['data'][0]['Seat_No'];
  //       coach = data['data'][0]['Coach_No'];
  //       price = data['data'][0]['Price'];
  //       train = data['data'][0]['Train_ID_'];
  // }

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
              const SizedBox(height: 50),
              Text('REVIEW YOUR TICKET:',
                  style: GoogleFonts.acme(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 42))),
              const SizedBox(height: 100),
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
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: passenger,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 14, color: Colors.white)),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Passenger ID",
                          icon: Icon(
                            Icons.train_rounded,
                            color: Colors.white70,
                          )),
                    ),
                  )),
              const SizedBox(height: 20),
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
                        onPressed: () async {
                          if (passenger.text == "") {
                            Fluttertoast.showToast(
                              msg: "Please enter your Passenger ID!",
                              toastLength: Toast.LENGTH_SHORT,
                              timeInSecForIosWeb: 2,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          } else {
                            final response = await http.post(
                              Uri.parse(
                                  'http://localhost:5000/api/checkBooking'),
                              body: json.encode({
                                "PassengersID": passenger.text,
                              }),
                              headers: {
                                "Content-Type": "application/json",
                              },
                            );
                            var data = json.decode(response.body);
                            if (json.decode(response.body)['status'] == true) {
                              print('${response.body}');
                              pass_id = data['data'][0]['Passenger_ID'];
                              first_name = data['data'][0]['First_Name'];
                              last_name = data['data'][0]['Last_Name'];
                              booking_id = data['data'][0]['Booking_ID'];
                              email = data['data'][0]['email'];
                              contact = data['data'][0]['Contact_No'];
                              booking_date = data['data'][0]['Booking_Date'];
                              seat = data['data'][0]['Seat_No'];
                              coach = data['data'][0]['Coach_No'];
                              price = data['data'][0]['Price'];
                              train = data['data'][0]['Train_ID_'];
                              Widget _buildPopupDialog(BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Color(0xFF4A305D),
                                  title: const Text(
                                    'These are your booking details:',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text("Passenger ID: $pass_id",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("First Name: $first_name",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Last Name: $last_name",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Email: $email",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Contact: $contact",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Booking ID: $booking_id",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Booking Date: $booking_date",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Train: $train",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Seat: $seat",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Coach: $coach",style: TextStyle(color: Colors.white)),
                                      // SizedBox(height: 5,),
                                      // Text("Price: $price",style: TextStyle(color: Colors.white)),
                                      SingleChildScrollView(
                                        controller: _scrollController,
                                        scrollDirection: Axis.horizontal,
                                        child: DataTable(columns: [
                                          DataColumn(
                                            label: Text(
                                              'Passenger ID',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text('First Name',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Last Name',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Email',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Contact',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Booking ID',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Booking Date',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Train',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Seat',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Coach',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          DataColumn(
                                            label: Text('Price',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ], //json.decode(response.body)['data'][0]['track_ID']
                                            rows: [
                                              DataRow(cells: [
                                                DataCell(Text('$pass_id',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$first_name',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$last_name',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$email',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$contact',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$booking_id',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$booking_date',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$train',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$seat',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$coach',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                                DataCell(Text('$price',
                                                    style: TextStyle(
                                                        color: Colors.white))),
                                              ])
                                            ]),
                                      )
                                    ],
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor: MaterialStateProperty
                                            .resolveWith<Color?>(
                                                (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Colors
                                                .white70; //<-- SEE HERE
                                          return null;
                                        }),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close',
                                          style: TextStyle(
                                              color: Color(0xFF4A305D),
                                              fontWeight: FontWeight.w800)),
                                    ),
                                  ],
                                );
                              }

                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    _buildPopupDialog(context),
                              );
                            } else {
                              print(
                                  'Request failed with status: ${response.statusCode}');
                              Fluttertoast.showToast(
                                msg: "Passenger ID does not exist!",
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 2,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }
                          }
                        },
                        child: Text('CHECK',
                            style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                                    fontSize: 14, color: Colors.white)))),
                    const SizedBox(width: 10),
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
                        onPressed: () {
                          if (passenger.text == "") {
                            Fluttertoast.showToast(
                              msg: "Please enter your Passenger ID!",
                              toastLength: Toast.LENGTH_SHORT,
                              timeInSecForIosWeb: 2,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          } else {
                            Widget _buildPopupDialog(BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Color(0xFF4A305D),
                                title: const Text(
                                  'To cancel your ticket, please follow the below mentioned procedure',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Call our customer support!",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                actions: <Widget>[
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors.white70; //<-- SEE HERE
                                        return null;
                                      }),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close',
                                        style: TextStyle(
                                            color: Color(0xFF4A305D),
                                            fontWeight: FontWeight.w800)),
                                  ),
                                ],
                              );
                            }

                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context),
                            );
                          }
                        },
                        child: Text('CANCEL TICKET',
                            style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                                    fontSize: 14, color: Colors.white))))
                  ]),
            ]),
          )
        ]));
  }
}
