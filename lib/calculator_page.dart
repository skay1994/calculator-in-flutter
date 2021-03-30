import 'package:flutter/material.dart';
import 'package:simple_calculator/Widgets/Display.dart';
import 'package:simple_calculator/Widgets/KeyPad.dart';
import 'package:simple_calculator/Utils/Colors.dart' as CalColors;
import 'package:simple_calculator/Utils/Controller.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  static Controller controller = Controller();

  _CalculatorPageState() {
    controller.listen((dynamic symbol) => Controller.runHandler(symbol));
  }

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
