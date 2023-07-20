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
  bool _wipeValue = false;

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
    _wipeValue = true;
    operation = newOperation;
  }

  _addDigit(String digit) {
    final isDot = digit == '.';
    final wipeValue = (_value == '0' && !isDot) || _wipeValue;

    if (isDot && _value.contains('.') && !wipeValue) {
      return;
    }

    final emptyValue = isDot ? '0' : '';
    final currentValue = _wipeValue ? emptyValue : _value;
    _value = currentValue + digit;
    _wipeValue = false;

    _buffer[_bufferIndex] = double.tryParse(_value) ?? 0;
  }
}
