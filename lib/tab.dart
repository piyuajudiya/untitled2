import 'package:flutter/material.dart';

class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              onTap: (value) {
                print(value);
              },
                tabs: [
              Tab(text: "one",),
              Tab(text: "two",),
              Tab(text: "three",),
            ]),
          ),
          body: TabBarView(children: [one(), two(), three()]),
        ));
  }
}

class one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: Text("one"),
          leading: Text("$index"),
        );
      },
    );
  }
}

class two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: Text("two"),
          leading: Text("$index"),
        );
      },
    );
  }
}

class three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: Text("three"),
          leading: Text("$index"),
        );
      },
    );
  }
}
