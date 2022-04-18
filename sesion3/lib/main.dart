import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contador App',
    theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.black),
    home: Contador(),
  ));
}

class Contador extends StatefulWidget {
  const Contador({Key key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter App'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 10),
                  ]),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  cont.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: textColor),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'Add',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.greenAccent),
                  ),
                  onPressed: () => {
                    setState(() {
                      cont++;
                    })
                  },
                ),
                TextButton(
                  child: Text('Reset',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black)),
                  onPressed: () => {
                    setState(() {
                      cont = 0;
                      textColor = Colors.black;
                    })
                  },
                ),
                TextButton(
                  child: Text('Sub',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.red)),
                  onPressed: () => {
                    setState(() {
                      cont--;
                    })
                  },
                )
              ],
            )
          ],
        )));
  }
}
