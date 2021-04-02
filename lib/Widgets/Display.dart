import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:simple_calculator/Utils/Controller.dart';

class Display extends StatelessWidget {
  final Controller _controller = Controller.to;

  late final double height;

  double get _margin => (height / 10);

  final LinearGradient _gradient = const LinearGradient(colors: [ Colors.black26, Colors.black45 ]);

  Display(this.height);

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.only(top: _margin, bottom: _margin),
        constraints: BoxConstraints.expand(height: height),
        child: Container(
            padding: EdgeInsets.fromLTRB(32, 32, 32, 32),
            constraints: BoxConstraints.expand(height: height - (_margin)),
            decoration: BoxDecoration(gradient: _gradient),
            child: RxBuilder(
              builder: (_) => Align(
                alignment: Alignment.centerRight,
                  child: renderValues(_)
              ),
            )
        )
    );
  }

  Widget renderValues(context) {
    TextStyle style = Theme.of(context).textTheme.headline3!
        .copyWith(color: Colors.white, fontWeight: FontWeight.w200);
    TextStyle lastedStyle = Theme.of(context).textTheme.headline3!
        .copyWith(color: Colors.white, fontWeight: FontWeight.w200);

    final operation = _controller.operation.value;
    final output = _controller.output.value;
    final currentValue = _controller.currentValue.value;

    if(!operation.isEmptyKey() && output.isNotEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(output, style: lastedStyle, textAlign: TextAlign.right),
          Text(currentValue, style: style, textAlign: TextAlign.right)
        ],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(currentValue, style: style, textAlign: TextAlign.right)
      ],
    );
  }
}