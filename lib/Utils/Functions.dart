import 'KeySymbol.dart';
import 'Keys.dart';

class Functions {
  static List<KeySymbol> _functions = [
    Keys.clear,
    Keys.sign,
    Keys.percent,
    Keys.decimal,
    Keys.ce
  ];

  static List<KeySymbol> _operators = [
    Keys.divide,
    Keys.multiply,
    Keys.subtract,
    Keys.add,
    Keys.equals
  ];

  static List<KeySymbol> _notImplemented = [
    Keys.x1,
    Keys.elevateTwo,
    Keys.root2,
    Keys.backArrow
  ];

  static List<KeySymbol> _integers = [
    Keys.zero,
    Keys.one,
    Keys.two,
    Keys.three,
    Keys.four,
    Keys.five,
    Keys.six,
    Keys.seven,
    Keys.eight,
    Keys.nine
  ];

  bool get isOperator => _operators.contains(this);

  bool get notImplemented => _notImplemented.contains(this);

  bool get isInteger => _integers.contains(this);

  bool get isFunction => _functions.contains(this);

  static void execute(currentValue, nextValue, operation) {

  }
}
