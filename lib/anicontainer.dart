import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class animcon extends StatefulWidget {
  const animcon({Key? key}) : super(key: key);

  @override
  State<animcon> createState() => _animconState();
}

class _animconState extends State<animcon> {
  @override
  bool c = false;


  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        c = true;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          const Text(
            'Be',
            style: TextStyle(fontSize: 43.0),
          ),
          const SizedBox(width: 20.0, height: 100.0),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40.0,
              fontFamily: 'Horizon',
              color:Colors.blue
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('AWESOME'),
                RotateAnimatedText('OPTIMISTIC'),
                RotateAnimatedText('DIFFERENT'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ],
      ),
    );
  }
}

//
// Column(
//   children: [
//     AnimatedContainer(
//         onEnd: () {
//           setState(() {
//             c = !c;
//           });
//         },
//         height: c ? 100 : 200,
//         width: c ? 100 : 200,
//         color: c ? Colors.amber : Colors.pink,
//         duration: Duration(seconds: 2)),
//     // ElevatedButton(
//     //     onPressed: () {
//     //       setState(() {
//     //         c = !c;
//     //       });
//     //     },
//     //     child: Text("change"))
//   ],
// )

// AnimationLimiter(
// child: ListView.builder(
// itemCount: 10,
// itemBuilder: (BuildContext context, int index) {
// return AnimationConfiguration.staggeredList(
// position: index,
// duration: const Duration(seconds: 1),
// child: SlideAnimation(
// verticalOffset: 50.0,
// child: FadeInAnimation(
// child: Text("item ${index}"),
// ),
// ),
// );
// },
// ),
// ),

/*
SingleChildScrollView(
            child: AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 1),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  )],
                ),
              ),
            ),
          ),
 */
