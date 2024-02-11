import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class StateProvider with ChangeNotifier {
  
  String _results = 'Results Here..';

  String get results => _results;

  // tombol nomor 1
  void number_one(text){
    
    int angka = int.parse(text);
    _results = '';
    
    for(var i = 1; i < angka + 1; i++){
      _results += '$i ';
    }

    notifyListeners();
  }

  // tombol nomor 2
  void number_two(text){
    
    int angka = int.parse(text);
    _results = '';

    for(var i = 1; i < angka + 1; i++){
      _results += '$i ';
    }

    int angka_next = angka;
    for(var i = 1; i < angka; i++){
      angka_next--; 
      _results += '$angka_next ';
    }

    notifyListeners();
  }

  // tombol nomor 3
  void number_three(text){
    
    int angka = int.parse(text);
    _results = '';

    var c = 1;
    var sum = angka * 2;
    for(var i = 0; i < angka; i++){
      _results += ((sum * c) + i).toString() + ' ';
      c++;
    }

    notifyListeners();
  }

  // tombol nomor 4
  void number_four(text){
    
    int angka = int.parse(text);
    _results = '';

    for(var i = 1; i < angka + 1; i++){
      if(i % 5 == 0 && i % 7 == 0){
        _results += 'LIMATUJUH ';
      }else if(i % 5 == 0){
        _results += 'LIMA ';
      }else if(i % 7 == 0){
        _results += 'TUJUH ';
      }else{
        _results += '$i ';
      }
    }

    notifyListeners();
  }

}


