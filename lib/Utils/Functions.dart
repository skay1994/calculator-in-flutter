import 'Controller.dart';
import 'KeySymbol.dart';
import 'Keys.dart';

class Functions {
  static Functions? _instance;
  final Controller _controller = Controller.to;
  bool addEqualSymbol = false;

  factory Functions() {
    if (_instance == null) {
      _instance = Functions._newInstance();
    }

    return _instance!;
  }

  Functions._newInstance();

  static Functions get to => Functions();

  static List<KeySymbol> _functions = [
    Keys.clear,
    // Keys.sign,
    // Keys.percent,
    // Keys.decimal,
    // Keys.ce,
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
    Keys.backArrow,
    Keys.sign,
    Keys.percent,
    Keys.decimal,
    Keys.ce,
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

  bool notImplemented(key) => _notImplemented.contains(key);

  static bool isInteger(key) => _integers.contains(key);

  static bool isFunction(key) => _functions.contains(key);

  double get _lastedValue => _controller.lastedValue.value.isNotEmpty
      ? double.parse(_controller.lastedValue.value) : 0;

  double get _currentValue => _controller.currentValue.value.isNotEmpty
      ? double.parse(_controller.currentValue.value) : 0;

  String execute() {
    KeySymbol symbol = _controller.operation.value;
    Map<KeySymbol, dynamic> table = {
      Keys.divide: (a, b) => (a / b),
      Keys.multiply: (a, b) => (a * b),
      Keys.subtract: (a, b) => (a - b),
      Keys.add: (a, b) => (a + b)
    };

    final result = table[symbol](_lastedValue, _currentValue);
    addEqualSymbol = true;

    print(_controller.lastedValue.value);
    print('lastedValue');

    print(_controller.output.value);

    print(_controller.currentValue.value);
    print('currentValue');

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

  void equals() {
    addEqualSymbol = true;

    _controller.currentValue.value = execute();
    _controller.lastedValue.value = '';
    _controller.output.value = mountOutput();
    _controller.operation.value = KeySymbol.asEmpty();
  }

  void ce() {
    _controller.currentValue.value = '';
  }

  String mountOutput() {
    final lastedValue = _controller.lastedValue.value;
    final operation = _controller.operation.value;
    final currentValue = _controller.currentValue.value;
    var output = '';

    if (lastedValue.isEmpty) {
      output += '$currentValue $operation';
    }
    if (lastedValue.isNotEmpty) {
      output += ' $lastedValue';
    }
    if(addEqualSymbol) {
      output += ' ${Keys.equals.value}';
    }

    return output;
  }
}
