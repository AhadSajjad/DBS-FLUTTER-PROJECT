import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late Material materialButton;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DEEZ RAILWAYS",style: TextStyle(fontWeight: FontWeight.w500)),
          leading: Icon(Icons.train),
          backgroundColor: background,
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
        ),
        backgroundColor: background,
        body: Stack(
          children : [
          Center(
          child: Column(
            children: [
              Container(
                height: 500,width: 500,
                child: Column(
                  children:[
                    SizedBox(height: 50),
                    Text("WELCOME TO DEEZ RAILWAYS!", style: TextStyle(color: Colors.white, fontSize: 30),),
                    SizedBox(height: 50),
                    FadeInImage.assetNetwork(placeholder: "assets/thomas.png",height: 300 , image: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d5a30244-7dcd-4acc-a472-cbd2bd37a1dc/d9bzdfr-a8f3182d-af2e-458c-8911-4e31f2764fda.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Q1YTMwMjQ0LTdkY2QtNGFjYy1hNDcyLWNiZDJiZDM3YTFkY1wvZDliemRmci1hOGYzMTgyZC1hZjJlLTQ1OGMtODkxMS00ZTMxZjI3NjRmZGEuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.aTnZYYN_dCMj50kuLcAddNCOl-Kp3iI8yN-V6G5B_l4',width: 500),
                  ],
              ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(
                      width: 0.0,
                      color: background,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                decoration: BoxDecoration(
                  color: background,
                  border: Border.all(
                    width: 0.0,
                    color: Colors.grey,
                  ),
                ),
                child: ColoredBox(
                  color: Colors.grey.withOpacity(0.05),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIndicator(
                          netDragPercent: 0.0,
                          pagesLength: 1,
                          indicator: Indicator(
                            indicatorDesign: IndicatorDesign.line(
                              lineDesign: LineDesign(
                                lineType: DesignType.line_uniform,
                              ),
                            ),
                          ),
                        ),
                        _signupButton
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
    ],
      ),
    ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'JUMP IN',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

