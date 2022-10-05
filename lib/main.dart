// ignore_for_file: prefer_const_constructors

import 'package:app_times/appbar.dart';
import 'package:app_times/drawer.dart';
import 'package:app_times/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabelaApp());
}

class TabelaApp extends StatefulWidget {
  const TabelaApp({Key? key}) : super(key: key);

  @override
  TabelaAppState createState() {
    return TabelaAppState();
  }
}

class TabelaAppState extends State<TabelaApp> {
  int num = 0;

  void onClick() {
    setState(() {
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBarWidget("App Drawer"),
        body: HomeWidget(),
      ),
    );
  }
}
