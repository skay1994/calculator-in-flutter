import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_calculator/Utils/Controller.dart';
import 'package:simple_calculator/Utils/KeySymbol.dart';


class Key extends StatelessWidget {

  Key(this.symbol);

  final KeySymbol symbol;

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    double size = screen.width / 4;

    return Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(1),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            primary: symbol.color,
          ),
          child: Text(symbol.value, style: TextStyle(
            color: Colors.white
          )),
          onPressed: () => Controller.fire(symbol),
        )
    );
  }
}
