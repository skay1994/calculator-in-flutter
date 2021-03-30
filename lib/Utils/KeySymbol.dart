import 'package:flutter/material.dart';

enum KeyType { FUNCTION, OPERATOR, INTEGER }

class KeySymbol {
  const KeySymbol(this.value, this.type, this.color);

  final String value;
  final Color color;
  final KeyType type;

  @override
  String toString() => value;
}
