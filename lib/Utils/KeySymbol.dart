import 'package:flutter/material.dart';

import 'Colors.dart';

enum KeyType { FUNCTION, OPERATOR, INTEGER }

class KeySymbol {
  const KeySymbol(this.value, [this.type, this.color]);

  factory KeySymbol.asEmpty() {
    return KeySymbol('is_empty');
  }

  final String value;
  final Color? color;
  final KeyType? type;

  bool isEmptyKey() => value == 'is_empty';

  @override
  String toString() => value;
}
