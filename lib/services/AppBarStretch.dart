import 'package:flutter/foundation.dart';

class AppBarStretch with ChangeNotifier{
  double width = 100;
  double height = 100;

  void ToggleStretch(){
    height = 180;
    notifyListeners();

  }
  void ToggleStretch2(){
    height = 100;
    notifyListeners();

  }
}