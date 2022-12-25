import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";
import "package:learning/homepage.dart";

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
        home: Scaffold(
          appBar: AppBar(
            title: const Text("DEEZ RAILWAYS",
                style: TextStyle(fontWeight: FontWeight.w500)),
            leading: const Icon(Icons.train),
            backgroundColor: background,
            foregroundColor: Colors.white,
            shadowColor: Colors.white,
          ),
          backgroundColor: background,
          body: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      "WELCOME TO DEEZ RAILWAYS!",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(height: 50),
                    FadeInImage.assetNetwork(
                        placeholder: "assets/thomas.png",
                        height: 300,
                        image:
                            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d5a30244-7dcd-4acc-a472-cbd2bd37a1dc/d9bzdfr-a8f3182d-af2e-458c-8911-4e31f2764fda.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Q1YTMwMjQ0LTdkY2QtNGFjYy1hNDcyLWNiZDJiZDM3YTFkY1wvZDliemRmci1hOGYzMTgyZC1hZjJlLTQ1OGMtODkxMS00ZTMxZjI3NjRmZGEuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.aTnZYYN_dCMj50kuLcAddNCOl-Kp3iI8yN-V6G5B_l4',
                        width: 500),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: background,
                        border: Border.all(
                          width: 0.0,
                          color: background,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 14.0),
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
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    elevation: 10,
                                    textStyle:
                                        const TextStyle(fontWeight: FontWeight.w800)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()),
                                  ); // Navigate back to first route when tapped.
                                },
                                child: const Text('JUMP IN!'),
                              ),
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
        ));
  }
}
