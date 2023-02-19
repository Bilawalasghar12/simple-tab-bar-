import 'package:flutter/material.dart';
import 'package:untitledtabbarview/tab1.dart';
import 'package:untitledtabbarview/tab2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var _tabController;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Tab Bar View with App Bar"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: "Tab 1"),
              Tab(text: "Tab 2"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const Tab1(),
            const Tab2(),
          ],
        ),
      ),
    );
  }
}
