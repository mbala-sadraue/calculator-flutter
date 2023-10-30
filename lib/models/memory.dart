// ignore_for_file: prefer_final_fields, unused_field, unused_element

class Momory{
static  const operations = ['%','+','/','x','-','='];

  String _value = '0';
  final _buffer = [0.0,0.0];
  int  _bufferIndex = 0;
  String _operation = "";
  String operation  = '';
  bool _wipeValue = false;
  String _lastCommand = '';


void applyCommand(command){
  
  if(_isReplacingOperation(command)){

    _operation = command;
    return;   
  }

  if(command == 'AC'){

      _clearAll();
  }else if(operations.contains(command)){

      _setOperation(command);
  }else{
    _addDigit(command);
  }

  _lastCommand = command;

 /*switch(command){
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
    _value += command;
    break;
    case 'AC':
     _clearAll();
     break;

 }
 */
}
  String get value{


    return _value;
  }

  void _clearAll(){

    _value = '0';
    _buffer.setAll(0,[0.0,0.0]);
    _bufferIndex = 0;
    operation = '';
    _wipeValue = false;
  }

  _addDigit(digit){
    final isDot = digit =='.';

    final wipeValue =   _wipeValue ||(_value == '0' && isDot != true);
    if(isDot && _value.contains('.') && !wipeValue){
      return;
    }


    final emptyValue = isDot?'0':'';
    final String currentValue = wipeValue == true ?emptyValue:_value;
    _value = currentValue +  digit;
    _buffer[_bufferIndex] = double.tryParse(_value)??0;
    _wipeValue = false;
  }

  _setOperation(String newOperation){

      bool isEqualSign  = newOperation == '=';
      if(_bufferIndex == 0){
        if(!isEqualSign){
          _operation = newOperation;
        _bufferIndex = 1;
        _wipeValue = true;
        }
      }else{
        _buffer[0] = _calculator();
        _buffer[1] = 0.0;
        _bufferIndex = 1;
        _value = _buffer[0].toString();
        _value = _value.endsWith('.0')? _value.split('.')[0] :_value;
        
        _operation = isEqualSign?'':newOperation;
        _bufferIndex = isEqualSign?0:1;
      }
      _wipeValue = true;
      
  }
  _calculator(){

    switch(_operation){

      case '%': return _buffer[0] % _buffer[1];
      case '/': return _buffer[0] / _buffer[1];
      case '+': return _buffer[0] + _buffer[1];
      case 'x': return _buffer[0] * _buffer[1];
      case '-': return _buffer[0] - _buffer[1];
      default: return _buffer[0];
    }


  }



_isReplacingOperation(String command){

  return 
    operations.contains(_lastCommand) &&
    operations.contains(command) && 
    _lastCommand != '=' && command != '=';


}

}