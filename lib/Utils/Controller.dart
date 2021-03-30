import 'dart:async';

import 'package:rx_notifier/rx_notifier.dart';
import 'package:simple_calculator/Utils/Functions.dart';
import 'package:simple_calculator/Utils/KeySymbol.dart';
import 'package:simple_calculator/Utils/Keys.dart';


class Controller {
  static Controller? _instance;

  final RxNotifier<String> output = RxNotifier('');
  final RxNotifier<String> currentValue = RxNotifier('');
  final RxNotifier<String> lastedValue = RxNotifier('');
  final RxNotifier operation = RxNotifier(null);

  bool get _hasOperation => operation.value != null;

  static final StreamController _controller = StreamController.broadcast();

  StreamSubscription listen(Function handler) => _controller.stream.listen(handler as dynamic);

  static fire(KeySymbol key) => _controller.add(key);

  factory Controller() {
    if(_instance == null) {
      _instance = Controller._newInstance();
    }

    return _instance!;
  }

  Controller._newInstance();

  static Controller get to => new Controller();

  static runHandler(KeySymbol symbol) {
    switch(symbol.type) {
      case KeyType.FUNCTION:
        return Controller._handleFunction(symbol);
      case KeyType.OPERATOR:
        return Controller._handleOperator(symbol);
      case KeyType.INTEGER:
        return Controller._handleInteger(symbol);
    }

  }

  static dispose() => _controller.close();

  static void _handleFunction(KeySymbol symbol) {}

  static void _handleOperator(KeySymbol symbol) {}

  static void _handleInteger(KeySymbol symbol) {
    final _controller = Controller.to;
    var value = _controller.currentValue.value;
    var newValue = value + symbol.value;

    if(value.isEmpty) {
      newValue = symbol.value;
    }

    _controller.currentValue.value = newValue;
  }

}