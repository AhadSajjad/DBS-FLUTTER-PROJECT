import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bookingDetails.dart';
import 'package:mysql1/mysql1.dart';


class NewBookingPage extends StatefulWidget {
  const NewBookingPage({Key? key}) : super(key: key);

  @override
  State<NewBookingPage> createState() => _NewBookingPageState();
}

class _NewBookingPageState extends State<NewBookingPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'A_Item1',
      'A_Item2',
      'A_Item3',
      'A_Item4',
      'B_Item1',
      'B_Item2',
      'B_Item3',
      'B_Item4',
    ];
    String? selectedValue;
    final TextEditingController textEditingController = TextEditingController();
    @override
    void dispose() {
      textEditingController.dispose();
      super.dispose();
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("DEEZ RAILWAYS",
      //       style: TextStyle(fontWeight: FontWeight.w500)),
      //   leading: const Icon(Icons.train),
      //   backgroundColor: background,
      //   foregroundColor: Colors.white,
      //   shadowColor: Colors.white,
      // ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 784,
              width: 1320,
              child: FittedBox(
                child: Image.asset('purpletrain.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                Text('BOOK YOUR TICKET!',
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ))),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Text(
                            'FROM',
                            style: GoogleFonts.lato(textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),)
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 120,
                          itemHeight: 40,
                          dropdownMaxHeight: 200,
                          searchController: textEditingController,
                          searchInnerWidget: Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              bottom: 4,
                              right: 8,
                              left: 8,
                            ),
                            child: TextFormField(
                              controller: textEditingController,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                                hintText: 'Search',
                                hintStyle: const TextStyle(fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          searchMatchFn: (item, searchValue) {
                            return (item.value
                                .toString()
                                .contains(searchValue));
                          },
                          //This to clear the search value when you close the menu
                          onMenuStateChange: (isOpen) {
                            if (!isOpen) {
                              textEditingController.clear();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Text(
                            'TO',
                            style: GoogleFonts.lato(textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 120,
                          itemHeight: 40,
                          dropdownMaxHeight: 200,
                          searchController: textEditingController,
                          searchInnerWidget: Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              bottom: 4,
                              right: 8,
                              left: 8,
                            ),
                            child: TextFormField(
                              controller: textEditingController,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                                hintText: 'Search',
                                hintStyle: const TextStyle(fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          searchMatchFn: (item, searchValue) {
                            return (item.value
                                .toString()
                                .contains(searchValue));
                          },
                          //This to clear the search value when you close the menu
                          onMenuStateChange: (isOpen) {
                            if (!isOpen) {
                              textEditingController.clear();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
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
                            MaterialStateProperty.all(Color(0xFF4A305D)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.white)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const BookingDetails()));
                          },
                          child: Text(
                            'GO!',
                              style: GoogleFonts.lato(textStyle:TextStyle(
                                  fontSize: 14,
                                  color: Colors.white))
                          )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text("POPULAR DESTINATIONS",
                    style: GoogleFonts.acme(
                        textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        //margin: const EdgeInsets.only(left: 90),
                        width: 300,
                        height: 500,
                        // child: Padding(
                        //     padding: EdgeInsets.only(top: 100),
                        child: Column(children: [
                            Container(
                            height: 170, width: 290,
                              decoration: BoxDecoration(
                                //color: Colors.teal,
                                border: Border.all(
                                  color: Color(0xFF4A305D),
                                  width: 1.5,
                                ),
                                  borderRadius: BorderRadius.circular(20),
                              ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('Karachi.jpg'),
                            ),),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25, width: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4A305D),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //color: Colors.white,
                               // child: Padding(
                               //   padding:
                                 //     const EdgeInsets.only(left: 9.0, top: 4.0),
                                  child: Text('From:',
                                      style: GoogleFonts.josefinSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),),
                              //  ),
                              ),
                            ),
                          ),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
                                    child: Text(
                                      'ISLAMABAD',
                                      style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                          fontSize: 14,
                                          color: Colors.white))
                                    )),
                              )),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
                                    child: Text(
                                      'LAHORE',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))
                                    )),
                              )),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    child: Text(
                                      'MULTAN',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))
                                    )),
                              ))
                        ])),
                    Container(
                        //margin: const EdgeInsets.only(left: 90),
                        width: 300,
                        height: 500,
                        // child: Padding(
                        //     padding: EdgeInsets.only(top: 100),
                        child: Column(children: [
                          Container(
                            height: 170, width: 290,
                            decoration: BoxDecoration(
                              //color: Colors.teal,
                              border: Border.all(
                                color: Color(0xFF4A305D),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('Lahore.jpg'),
                            ),),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25, width: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4A305D),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //color: Colors.white,
                              //  child: Padding(
                                  //padding:
                                      //const EdgeInsets.only(left: 9.0, top: 4.0),
                                  child: Text('From:',
                                      style: GoogleFonts.josefinSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),),
                                ),
                              //),
                            ),
                          ),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
                                    child: Text(
                                      'KARACHI',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))
                                    )),
                              )),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
                                    child: Text(
                                      'ISLAMABAD',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white)),
                                    )),
                              )),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    child: Text(
                                      'MULTAN',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))
                                    )),
                              ))
                        ])),
                    Container(
                      //margin: const EdgeInsets.only(left: 90),
                      width: 300,
                      height: 500,
                      // child: Padding(
                      //     padding: EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          Container(
                            height: 170, width: 290,
                            decoration: BoxDecoration(
                              //color: Colors.teal,
                              border: Border.all(
                                color: Color(0xFF4A305D),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('Islamabad.jpg'),
                            ),),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25, width: 60,
                                //color: background,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4A305D),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //color: Colors.white,
                               // child: //Padding(
                                  //padding:
                                      //const EdgeInsets.only(left: 9.0, top: 4.0),
                                  child: Text('From:',
                                      style: GoogleFonts.josefinSans(textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      )),),
                                ),
                              ),
                            //),
                          ),
                          Container(
                              width: 120,
                              // margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    child: Text(
                                      'KARACHI',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))
                                    )),
                              )),
                          Container(
                              width: 120,
                              //margin: const EdgeInsets.only(top: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
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
                                          MaterialStateProperty.all(Color(0xFF4A305D)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BookingDetails()));
                                    },
                                    child: Text(
                                      'LAHORE',
                                        style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))
                                    )),
                              )),
                          Container(
                            width: 120,
                            //margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Colors.white70; //<-- SEE HERE
                                    return null;
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all(Color(0xFF4A305D)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white)),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const BookingDetails()));
                                },
                                child: Text(
                                  'MULTAN',
                                    style: GoogleFonts.josefinSans(textStyle:TextStyle(
                                        fontSize: 14,
                                        color: Colors.white))
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
