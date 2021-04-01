import 'Controller.dart';
import 'KeySymbol.dart';
import 'Keys.dart';

class Functions {
  static Functions? _instance;
  final Controller _controller = Controller.to;
  bool addEqualSymbol = false;

  factory Functions() {
    if(_instance == null) {
      _instance = Functions._newInstance();
    }

    return _instance!;
  }

  Functions._newInstance();

  static Functions get to => Functions();

  static List<KeySymbol> _functions = [
    Keys.clear,
    Keys.sign,
    Keys.percent,
    Keys.decimal,
    Keys.ce,
    Keys.equals
  ];

  static List<KeySymbol> _operators = [
    Keys.divide,
    Keys.multiply,
    Keys.subtract,
    Keys.add,
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

  static bool isOperator(key) => _operators.contains(key);

  static bool notImplemented(key) => _notImplemented.contains(key);

  static bool isInteger(key) => _integers.contains(key);

  static bool isFunction(key) => _functions.contains(key);

  String execute() {
    KeySymbol symbol = _controller.operation.value;
    double lastedValueParsed = double.parse(_controller.lastedValue.value);
    double currentValueParsed = double.parse(_controller.currentValue.value);

    Map<KeySymbol, dynamic> table = {
      Keys.divide: (a, b) => (a / b),
      Keys.multiply: (a, b) => (a * b),
      Keys.subtract: (a, b) => (a - b),
      Keys.add: (a, b) => (a + b)
    };

    final result = table[symbol](lastedValueParsed, currentValueParsed);
    addEqualSymbol = true;
    return result.toString();
  }

  // Functions

  void clear() {
    _controller.output.value = '';
    _controller.currentValue.value = '';
    _controller.lastedValue.value = '';
    _controller.operation.value = KeySymbol.asEmpty();
    addEqualSymbol = false;
  }

  void equals(Controller controller) {
    var result = execute();

    addEqualSymbol = true;

    _controller.output.value = '';
    _controller.currentValue.value = result;
    _controller.lastedValue.value = moundLastedValue();
    _controller.operation.value = KeySymbol.asEmpty();
  }

  String moundLastedValue() {
    var value = '${_controller.lastedValue.value} ${_controller.operation.value} ${_controller.currentValue.value}';

    if(addEqualSymbol) {
      value = value + '${Keys.equals.value} ';
    }

    return value;
  }
}
