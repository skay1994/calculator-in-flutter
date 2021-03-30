import 'package:flutter/material.dart';
import 'package:simple_calculator/Utils/Keys.dart';
import 'Key.dart' as Calculator;

class KeyPad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  Calculator.Key(Keys.percent),
                  Calculator.Key(Keys.ce),
                  Calculator.Key(Keys.clear),
                  Calculator.Key(Keys.backArrow),
                ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  Calculator.Key(Keys.x1),
                  Calculator.Key(Keys.elevateTwo),
                  Calculator.Key(Keys.root2),
                  Calculator.Key(Keys.divide),
                ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  Calculator.Key(Keys.seven),
                  Calculator.Key(Keys.eight),
                  Calculator.Key(Keys.nine),
                  Calculator.Key(Keys.multiply),
                ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  Calculator.Key(Keys.four),
                  Calculator.Key(Keys.five),
                  Calculator.Key(Keys.six),
                  Calculator.Key(Keys.subtract),
                ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  Calculator.Key(Keys.one),
                  Calculator.Key(Keys.two),
                  Calculator.Key(Keys.three),
                  Calculator.Key(Keys.add),
                ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
                children: <Widget>[
                  Calculator.Key(Keys.sign),
                  Calculator.Key(Keys.zero),
                  Calculator.Key(Keys.decimal),
                  Calculator.Key(Keys.equals),
                ]
            ),
          )
        ]
    );
  }
}