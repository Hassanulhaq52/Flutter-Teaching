import 'package:flutter/foundation.dart';

class IncrementProvider with ChangeNotifier
{
  int _num=1;
  int getNum()
  {
    return _num;
  }
  void increment()
  {
    _num++;
    notifyListeners();
  }
}