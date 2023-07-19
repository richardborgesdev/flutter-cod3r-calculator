class Memory {
  String _value = '0';
  final _buffer = [0.0, 0.0];
  int _bufferIndex = 0;
  static const operations = [
    '%',
    '/',
    'x',
    '-',
    '+',
    '=',
  ];
  String operation = '';

  String get value => _value;

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else {
      _addDigit(command);
    }
  }

  void _allClear() {
    _value = '0';
  }

  _setOperation(String newOperation) {
    operation = newOperation;
  }

  _addDigit(String digit) {
    _value += digit;
  }
}
