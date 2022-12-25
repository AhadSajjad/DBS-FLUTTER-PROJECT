import "package:flutter/material.dart";
import "onboarding.dart";
import 'homepage.dart';
void main()
{
  runApp(MyApp());
}

//
// // class MyApp extends StatefulWidget {
//   // const MyApp({Key? key}) : super(key: key);
//
//   // @override
//   // State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//
//   late Material materialButton;
//   late int index;
//   final onboardingPagesList = [
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 340.0,
//                   vertical: 70.0,
//                 ),
//                 child: Image.asset('thomas.png',height: 600,width: 600),
//               ),
//             ],
//           ),
//         ),
//       ),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//   }
//   Material get _signupButton {
//     return Material(
//       borderRadius: defaultProceedButtonBorderRadius,
//       color: defaultProceedButtonColor,
//       child: InkWell(
//         borderRadius: defaultProceedButtonBorderRadius,
//         onTap: () {},
//         child: const Padding(
//           padding: defaultProceedButtonPadding,
//           child: Text(
//             'Finish',
//             style: defaultProceedButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("DEEZ RAILWAYS", style: TextStyle(fontFamily:"Calibri")),
//           backgroundColor: Colors.black54,
//           foregroundColor: Colors.white,
//         ),
//         backgroundColor: background,
//         body: Onboarding(
//           pages: onboardingPagesList,
//           onPageChange: (int pageIndex) {
//             index = pageIndex;
//           },
//           startPageIndex: 0,
//           footerBuilder: (context, dragDistance, pagesLength, setIndex) {
//             return DecoratedBox(
//               decoration: BoxDecoration(
//                 color: background,
//                 border: Border.all(
//                   width: 0.0,
//                   color: Colors.grey,
//                 ),
//               ),
//               child: ColoredBox(
//                 color: Colors.grey.withOpacity(0.05),
//                 child: Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomIndicator(
//                         netDragPercent: dragDistance,
//                         pagesLength: pagesLength,
//                         indicator: Indicator(
//                           indicatorDesign: IndicatorDesign.line(
//                             lineDesign: LineDesign(
//                               lineType: DesignType.line_uniform,
//                             ),
//                           ),
//                         ),
//                       ),
//                       index == pagesLength - 1
//                           ? _signupButton
//                           : _signupButton
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }