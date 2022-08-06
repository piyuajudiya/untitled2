import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:marquee/marquee.dart';

class mar extends StatefulWidget {
  const mar({Key? key}) : super(key: key);

  @override
  State<mar> createState() => _marState();
}

class _marState extends State<mar> {
  // List<Slide> slides = [];
  //
  // void initState() {
  //   super.initState();
  //
  //   slides.add(
  //     Slide(
  //       title: "ERASER",
  //       description:
  //       "Allow miles wound place the leave had. To sitting subject no improve studied limited",
  //       pathImage: "images/a.jpg",
  //       backgroundColor: const Color(0xfff5a623),
  //     ),
  //   );
  //   slides.add(
  //     Slide(
  //       title: "PENCIL",
  //       description:
  //       "Ye indulgence unreserved connection alteration appearance",
  //       pathImage: "images/b.jpg",
  //       backgroundColor: const Color(0xff203152),
  //     ),
  //   );
  //   slides.add(
  //     Slide(
  //       title: "RULER",
  //       description:
  //       "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
  //       pathImage: "images/kkr.jpg",
  //       backgroundColor: const Color(0xff9932CC),
  //     ),
  //   );
  // }
  // void onDonePress() {
  //   // Do what you want
  //   print("End of slides");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(),




      // IntroSlider(
      //   slides: slides,
      //   onDonePress: onDonePress,
      // ),





      // Marquee(
      //   text: 'Some sample text that takes some space.',
      //   style: TextStyle(fontWeight: FontWeight.bold),
      //   scrollAxis: Axis.horizontal,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   blankSpace: 20.0,
      //   velocity: 100.0,
      //   pauseAfterRound: Duration(seconds: 1),
      //   startPadding: 10.0,
      //   accelerationDuration: Duration(seconds: 1),
      //   accelerationCurve: Curves.linear,
      //   decelerationDuration: Duration(milliseconds: 500),
      //   decelerationCurve: Curves.easeOut,
      // ),
    );
  }
}
