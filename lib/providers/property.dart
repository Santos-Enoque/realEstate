import 'package:flutter/material.dart';

enum Property{HOUSE, FLAT}

class PropertyProvider with ChangeNotifier{
  Property _selectedProperty = Property.HOUSE;

  PropertyProvider(){
    _selectedProperty = Property.HOUSE;
  }

//  getter
  Property get selectedProperty => _selectedProperty;

  changePropertyType(Property type){
    _selectedProperty = type;
    notifyListeners();
  }

}