import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import 'package:dropdown_button2/dropdown_button2.dart';

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
      body:
        SingleChildScrollView( child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const Text('BOOK YOUR TICKET!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
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
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
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
                        buttonWidth: 150,
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
                      width: 50,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Text(
                          'TO',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
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
                        buttonWidth: 150,
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
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "POPULAR DESTINATIONS",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
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
                        Image.asset('karachi.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 25, width: 60,
                            decoration: BoxDecoration(
                              //color: Colors.teal,
                              border: Border.all(
                                color: Colors.teal,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //color: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9.0,top: 1.0),
                              child: Text('From:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
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
                                    'Islamabad',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            )),
                        Container(
                            width: 120,
                            //margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
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
                                    'Lahore',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            )),
                        Container(
                            width: 120,
                            //margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
                                  onPressed: () {},
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
                                  child: const Text(
                                    'Multan',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
                        Image.asset('lahore.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 25, width: 60,
                            decoration: BoxDecoration(
                              //color: Colors.teal,
                              border: Border.all(
                                color: Colors.teal,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //color: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9.0,top: 1.0),
                              child: Text('From:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
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
                                    'Karachi',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            )),
                        Container(
                            width: 120,
                            //margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
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
                                    'Islamabad',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            )),
                        Container(
                            width: 120,
                            //margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
                                  onPressed: () {},
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
                                  child: const Text(
                                    'Multan',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
                        Image.asset('islamabad.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 25, width: 60,
                            decoration: BoxDecoration(
                              //color: Colors.teal,
                              border: Border.all(
                                color: Colors.teal,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //color: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9.0,top: 1.0),
                              child: Text('From:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        Container(
                            width: 120,
                           // margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ElevatedButton(
                                  onPressed: () {},
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
                                  child: const Text(
                                    'Karachi',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            )),
                        Container(
                            width: 120,
                            //margin: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only (top: 10.0),
                              child: ElevatedButton(
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
                                    'Lahore',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            )),
                        Container(
                          width: 120,
                          //margin: const EdgeInsets.only(top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: ElevatedButton(
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
                                'Multan',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
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
