import 'package:rx_notifier/rx_notifier.dart';


class Controller {
  final RxNotifier output = RxNotifier(0);
  final RxNotifier currentValue = RxNotifier(0);
  final RxNotifier lastedValue = RxNotifier(null);
  final RxNotifier operation = RxNotifier(null);

  bool get _hasOperation => operation.value != null;

  void reset() {
    output.value = 0;
    currentValue.value = 0;
    lastedValue.value = null;
    operation.value = null;
  }

}