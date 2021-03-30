import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:simple_calculator/Utils/Controller.dart';

class Display extends StatelessWidget with Controller {

  Display(this.height);

  final double height;

  double get _margin => (height / 10);

  final LinearGradient _gradient = const LinearGradient(colors: [ Colors.black26, Colors.black45 ]);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.headline3!
        .copyWith(color: Colors.white, fontWeight: FontWeight.w200);

    return Container(
        padding: EdgeInsets.only(top: _margin, bottom: _margin),
        constraints: BoxConstraints.expand(height: height),
        child: Container(
            padding: EdgeInsets.fromLTRB(32, 32, 32, 32),
            constraints: BoxConstraints.expand(height: height - (_margin)),
            decoration: BoxDecoration(gradient: _gradient),
            child: RxBuilder(
              builder: (_) => Text("${output.value}", style: style, textAlign: TextAlign.right,),
            )
        )
    );
  }
}