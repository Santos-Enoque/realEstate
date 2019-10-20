import 'package:flutter/material.dart';

enum NumberOfRooms{ONE, TWO, THREE, FOUR, FIVE}
class RoomsProvider with ChangeNotifier{
  NumberOfRooms _numberOfRooms;

//  getters
  NumberOfRooms get numberOfRooms => _numberOfRooms;

  RoomsProvider(){
    _numberOfRooms = NumberOfRooms.ONE;
    notifyListeners();
  }

  changeNumberOfRooms(NumberOfRooms number){
    _numberOfRooms = number;
    notifyListeners();
  }
}