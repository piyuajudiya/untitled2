import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/dashboard.dart';
import 'package:untitled2/musicplayer.dart';
import 'package:untitled2/payment.dart';
import 'package:untitled2/practice.dart';
import 'package:untitled2/tab.dart';
import 'anicontainer.dart';
import 'example.dart';

void main() {
  runApp(MaterialApp(
    home: music(),
  ));
}

class img extends StatefulWidget {
  const img({Key? key}) : super(key: key);

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {

  List images = ["a.jpg","b.jpg","iplpic.jpg","kings.jpg","kkr.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
        return OpenContainer(openBuilder: (context, action) {
          return dashboard(images[index]);
        },closedBuilder: (context, action) {
          return  GridTile(child: Image.asset("images/${images[index]}"));
        });
      },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) ),
    );
  }
}




// class anim extends StatefulWidget {
//   const anim({Key? key}) : super(key: key);
//
//   @override
//   State<anim> createState() => _animState();
// }
//
// class _animState extends State<anim> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: GridView.builder(
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
//         itemCount: 20,
//         itemBuilder: (context, index) {
//           return OpenContainer(
//             openBuilder: (context, action) {
//               return dashboard("item  ${index}");
//             },
//             closedBuilder: (context, action) {
//               return ListTile(
//                 title: Text("item  ${index}"),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class first extends StatefulWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Image.asset("images/b.jpg"),
//       ),
//     );
//   }
// }
//
// class second extends StatefulWidget {
//   const second({Key? key}) : super(key: key);
//
//   @override
//   State<second> createState() => _secondState();
// }
//
// class _secondState extends State<second> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Image.asset("images/a.jpg"),
//       ),
//     );
//   }
// }
//
// class mainpage extends StatefulWidget {
//   const mainpage({Key? key}) : super(key: key);
//
//   @override
//   State<mainpage> createState() => _mainpageState();
// }
//
// class _mainpageState extends State<mainpage> {
//   bool firstpage = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         Expanded(
//           child: OpenContainer(
//             openBuilder: (context, action) {
//               return dashboard("hello");
//             },
//             closedBuilder: (context, action) {
//               return PageTransitionSwitcher(
//                 duration: Duration(seconds: 2),
//                 transitionBuilder:
//                     (child, primaryAnimation, secondaryAnimation) {
//                   return FadeThroughTransition(
//                     animation: primaryAnimation,
//                     secondaryAnimation: secondaryAnimation,
//                     // transitionType: SharedAxisTransitionType.scaled,
//                     child: child,
//                   );
//                 },
//                 child: firstpage ? first() : second(),
//               );
//             },
//           ),
//         ),
//         Row(
//           children: [
//             TextButton(
//                 onPressed: () {
//                   setState(() {
//                     firstpage = !firstpage;
//                   });
//                 },
//                 child: Text("back")),
//             Spacer(),
//             TextButton(
//                 onPressed: () {
//                   setState(() {
//                     firstpage = !firstpage;
//                   });
//                 },
//                 child: Text("next")),
//           ],
//         )
//       ],
//     ));
//   }
// }
//
// class con extends StatefulWidget {
//   const con({Key? key}) : super(key: key);
//
//   @override
//   State<con> createState() => _conState();
// }
//
// class _conState extends State<con> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(),
//       floatingActionButton: OpenContainer(
//         middleColor: Colors.amber,
//         openBuilder: (context, action) {
//           return dashboard("hello");
//         },
//         closedBuilder: (context, action) {
//           return FloatingActionButton(
//             onPressed: null,
//             child: Icon(Icons.add),
//
//           );
//         },
//       ),
//     );
//   }
// }
