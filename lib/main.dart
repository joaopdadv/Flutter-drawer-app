import 'package:app_times/drawer.dart';
import 'package:flutter/cupertino.dart';
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
    return MaterialApp(
      home: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: const Text("Título"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const Text("Teste"),
                ElevatedButton(
                  onPressed: onClick,
                  child: Text('número = $num'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
