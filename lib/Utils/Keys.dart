import 'package:simple_calculator/Utils/Colors.dart' as CalColors;

import 'KeySymbol.dart';

abstract class Keys {
  static KeySymbol clear =
      const KeySymbol('C', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol ce =
      const KeySymbol('CE', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol x1 =
      const KeySymbol('¹/x', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol elevateTwo =
      const KeySymbol('x²', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol root2 =
      const KeySymbol('²√x', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol percent =
      const KeySymbol('%', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol backArrow =
      const KeySymbol('⇚', KeyType.FUNCTION, CalColors.dark_3); //
  static KeySymbol sign =
      const KeySymbol('+/-', KeyType.FUNCTION, CalColors.dark_2); //
  static KeySymbol decimal =
      const KeySymbol('.', KeyType.FUNCTION, CalColors.dark_2); //
  static KeySymbol equals =
      const KeySymbol('=', KeyType.FUNCTION, CalColors.dark_4); // /

  static KeySymbol divide =
      const KeySymbol('÷', KeyType.OPERATOR, CalColors.dark_3); // /
  static KeySymbol multiply =
      const KeySymbol('x', KeyType.OPERATOR, CalColors.dark_3); // /
  static KeySymbol subtract =
      const KeySymbol('-', KeyType.OPERATOR, CalColors.dark_3); // /
  static KeySymbol add =
      const KeySymbol('+', KeyType.OPERATOR, CalColors.dark_3); // /

  static KeySymbol zero =
      const KeySymbol('0', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol one =
      const KeySymbol('1', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol two =
      const KeySymbol('2', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol three =
      const KeySymbol('3', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol four =
      const KeySymbol('4', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol five =
      const KeySymbol('5', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol six =
      const KeySymbol('6', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol seven =
      const KeySymbol('7', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol eight =
      const KeySymbol('8', KeyType.INTEGER, CalColors.dark_2); // //
  static KeySymbol nine =
      const KeySymbol('9', KeyType.INTEGER, CalColors.dark_2); // //
}
