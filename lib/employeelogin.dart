import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/homepage.dart';
import 'package:learning/loginPage.dart';
import 'package:onboarding/onboarding.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {

  Future T001() async {
      final response = await http.get(
        Uri.parse('http://localhost:5000/api/T001'),
        headers: {
          "Content-Type": "application/json",
        },
      );
      //print(json.decode(response.body)['status']);
      if (response.statusCode==200) {
        print('${response.body}');
        Widget _buildPopupDialog(BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xFF4A305D),
            title: Text(
              'Following are the details for T001 EXPRESS', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
            content: SingleChildScrollView(child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DataTable(
                    columns: [
                      DataColumn(
                        label: Text('Track_ID',style: TextStyle(color: Colors.white),),
                      ),
                      DataColumn(
                        label: Text('Source_Station',style: TextStyle(color: Colors.white)),
                      ),
                      DataColumn(
                        label: Text('Destination_Station',style: TextStyle(color: Colors.white)),
                      ),
                      DataColumn(
                        label: Text('Time_IN',style: TextStyle(color: Colors.white)),
                      ),
                      DataColumn(
                        label: Text('Time_Out',style: TextStyle(color: Colors.white)),
                      ),
                      DataColumn(
                        label: Text('Sequence_Number',style: TextStyle(color: Colors.white)),
                      ),
                    ],      //json.decode(response.body)['data'][0]['track_ID']
                    rows: [
                      for(int i=0; i<(json.decode(response.body)['data']).length;i++)
                      DataRow(cells: [
                        DataCell(Text('${json.decode(response.body)['data'][i]['track_ID']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Source_Station']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['destination_station']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Time_in']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Time_Out']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Sequence_Number']}',style: TextStyle(color: Colors.white))),
                      ])
                    ])
              ],
            )),
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
                child: const Text('Close',style: TextStyle(color: Color(0xFF4A305D),fontWeight: FontWeight.w600),),
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
        print('Request failed with status: ${response.statusCode}');
        Fluttertoast.showToast(
          msg: "Maintenance in progress. Please try again later!",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 2,
          textColor: Colors.white,
          fontSize: 16.0,
        );
    }
  }
  Future T002() async {
    final response = await http.get(
      Uri.parse('http://localhost:5000/api/T002'),
      headers: {
        "Content-Type": "application/json",
      },
    );
    //print(json.decode(response.body)['status']);
    if (response.statusCode==200) {
      print('${response.body}');
      Widget _buildPopupDialog(BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF4A305D),
          title: Text(
            'Following are the details for T002 KINGPIN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          content: SingleChildScrollView(child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DataTable(
                  columns: [
                    DataColumn(
                      label: Text('Track_ID',style: TextStyle(color: Colors.white),),
                    ),
                    DataColumn(
                      label: Text('Source_Station',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Destination_Station',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Time_IN',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Time_Out',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Sequence_Number',style: TextStyle(color: Colors.white)),
                    ),
                  ],      //json.decode(response.body)['data'][0]['track_ID']
                  rows: [
                    for(int i=0; i<(json.decode(response.body)['data']).length;i++)
                      DataRow(cells: [
                        DataCell(Text('${json.decode(response.body)['data'][i]['track_ID']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Source_Station']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['destination_station']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Time_in']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Time_Out']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Sequence_Number']}',style: TextStyle(color: Colors.white))),
                      ])
                  ])
            ],
          )),
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
              child: const Text('Close',style: TextStyle(color: Color(0xFF4A305D),fontWeight: FontWeight.w600),),
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
      print('Request failed with status: ${response.statusCode}');
      Fluttertoast.showToast(
        msg: "Maintenance in progress. Please try again later!",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 2,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
  Future T003() async {
    final response = await http.get(
      Uri.parse('http://localhost:5000/api/T003'),
      headers: {
        "Content-Type": "application/json",
      },
    );
    //print(json.decode(response.body)['status']);
    if (response.statusCode==200) {
      print('${response.body}');
      Widget _buildPopupDialog(BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF4A305D),
          title: Text(
            'Following are the details for T003 SUPREME', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          content: SingleChildScrollView(child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DataTable(
                  columns: [
                    DataColumn(
                      label: Text('Track_ID',style: TextStyle(color: Colors.white),),
                    ),
                    DataColumn(
                      label: Text('Source_Station',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Destination_Station',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Time_IN',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Time_Out',style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Text('Sequence_Number',style: TextStyle(color: Colors.white)),
                    ),
                  ],      //json.decode(response.body)['data'][0]['track_ID']
                  rows: [
                    for(int i=0; i<(json.decode(response.body)['data']).length;i++)
                      DataRow(cells: [
                        DataCell(Text('${json.decode(response.body)['data'][i]['track_ID']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Source_Station']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['destination_station']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Time_in']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Time_Out']}',style: TextStyle(color: Colors.white))),
                        DataCell(Text('${json.decode(response.body)['data'][i]['Sequence_Number']}',style: TextStyle(color: Colors.white))),
                      ])
                  ])
            ],
          )),
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
              child: const Text('Close',style: TextStyle(color: Color(0xFF4A305D),fontWeight: FontWeight.w600),),
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
      print('Request failed with status: ${response.statusCode}');
      Fluttertoast.showToast(
        msg: "Maintenance in progress. Please try again later!",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 2,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(children: [
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
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ElevatedButton(
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
                    child: Text("EMPLOYEE VIEW",
                        style: GoogleFonts.acme(
                            textStyle:
                                TextStyle(fontSize: 30, color: Colors.white))),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  SizedBox.fromSize(
                    size: Size(300, 300),
                    child: ClipOval(
                      child: Material(
                        color: Color(0xFF4A305D),
                        child: InkWell(
                          splashColor: Colors.pink,
                          onTap: () {
                            T001();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.train_rounded,
                                size: 220,
                                color: Colors.white,
                              ), // <-- Icon
                              Text("Express T001",
                                  style: GoogleFonts.satisfy(
                                      textStyle: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white))), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  SizedBox.fromSize(
                    size: Size(300, 300),
                    child: ClipOval(
                      child: Material(
                        color: Color(0xFF4A305D),
                        child: InkWell(
                          splashColor: Colors.pink,
                          onTap: () {
                            T002();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.train_outlined,
                                size: 220,
                                color: Colors.white,
                              ), // <-- Icon
                              Text("KingPin T002",
                                  style: GoogleFonts.satisfy(
                                      textStyle: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white))), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  SizedBox.fromSize(
                    size: Size(300, 300),
                    child: ClipOval(
                      child: Material(
                        color: Color(0xFF4A305D),
                        child: InkWell(
                          splashColor: Colors.pink,
                          onTap: () {
                            T003();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.directions_train_sharp,
                                size: 220,
                                color: Colors.white,
                              ), // <-- Icon
                              Text("Supreme T003",
                                  style: GoogleFonts.satisfy(
                                      textStyle: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white))), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                ],
              ),
              SizedBox(
                height: 187,
              ),
              Text("Click on train you must, and schedule you should receive!",
                  style: GoogleFonts.bungeeShade(
                      textStyle: TextStyle(fontSize: 20, color: Colors.white))),
            ],
          ),
        ),
      ]),
    );
  }
}
