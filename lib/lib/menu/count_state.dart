import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model{


int  _counter =  0 ;

int get counter=> _counter ;

void increament(){
  //method for increament counter 
  _counter++ ;

//notify all linseners for this class 
  notifyListeners() ;
}


void decreament(){
  _counter-- ; 
 
  notifyListeners();
}




}
