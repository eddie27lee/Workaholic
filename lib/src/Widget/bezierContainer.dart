import 'dart:math';

import 'package:flutter/material.dart';

import 'customClipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card (
      color: Colors.black,
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            new Container(
                alignment: Alignment.bottomRight,
                color: Colors.white,
                child: Text("jkdbc",

                )
            ),
            new Container(
                child: Transform.rotate(
                  angle: -pi / 3.5,
                  child: ClipPath(
                    clipper: ClipPainter(),
                    child: Container(
                      height: MediaQuery.of(context).size.height *.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFc3A239),Color(0xFFc3a239)]
                          )
                      ),
                    ),
                  ),
                )
            ),
          ]
        )

        );
    }
  }