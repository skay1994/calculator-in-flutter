import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:simple_calculator/Widgets/Display.dart';
import 'package:simple_calculator/Widgets/KeyPad.dart';
import 'package:simple_calculator/Utils/Colors.dart' as CalColors;

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    double buttonSize = screen.width / 10;
    double displayHeight = screen.height - (buttonSize * 5) - (buttonSize);

    return Scaffold(
      backgroundColor: CalColors.dark_1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Display(displayHeight)),
          Expanded(flex: 2, child: KeyPad())
        ],
      ),
    );
  }
}
