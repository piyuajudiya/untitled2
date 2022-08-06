import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  String str;

  dashboard(this.str);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  PageController? p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("images/${widget.str}"),
      ),
    );
  }
}
