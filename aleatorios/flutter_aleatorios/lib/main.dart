import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: "sumador",
    home: Adder(),
  ));
}

class Adder extends StatefulWidget {
  const Adder({Key key}) : super(key: key);

  @override
  State<Adder> createState() => _AdderState();
}

class _AdderState extends State<Adder> {
  Random r = Random();
  String suma = 'xx';
  String text = 'Push';
  String text2 = 'Push';
  int num1 = 0;
  int num2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SumandoApp", style: GoogleFonts.lato()),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: Text(
                    suma,
                    style: GoogleFonts.lato(),
                  ),
                ),
                onDoubleTap: () => {
                  setState(() {
                    suma = (num1 + num2).toString();
                  })
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    onDoubleTap: () {
                      setState(() {
                        num1 = r.nextInt(50);
                        text = num1.toString();
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: Text(text2, style: TextStyle(fontSize: 18)),
                    ),
                    onDoubleTap: () => {
                      setState(() {
                        num2 = r.nextInt(50);
                        text2 = num2.toString();
                      })
                    },
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
