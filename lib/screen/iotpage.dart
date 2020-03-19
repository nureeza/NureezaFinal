import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class IotModel{
  int led1,led2,door1,door2;

  IotModel(
    this.led1,this.led2,this.door1,this.door2
  );

  IotModel.formMap(Map<dynamic,dynamic>map){
    led1=map['led1'];
    led2=map['led2'];
    door1=map['door1'];
    door2=map['door2'];
  }

  Map<dynamic,dynamic> toMap(){
    final Map<dynamic,dynamic> map = Map<dynamic,dynamic>();
    map['led1']=led1;
    map['led2']=led2;
    map['door1']=door1;
    map['door2']=door2;

    return map;
  }

}