import 'package:flutter/cupertino.dart';

class Task{
  String description;
  bool isDone;
  Task({this.description,this.isDone=false});
  void toggleDone(){
    this.isDone=!this.isDone;
  }
}