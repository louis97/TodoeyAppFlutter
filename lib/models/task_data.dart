import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TasksProvider extends ChangeNotifier{
  final List<Task> _entries = <Task>[
    Task(description: 'Buy milk'),
    Task(description: 'Buy eggs'),
    Task(description: 'Buy bread')];

  void addTask(Task taskToAdd){
    this._entries.add(taskToAdd);
    notifyListeners();
  }

  int get taskCount => _entries.length;

  UnmodifiableListView<Task> get getEntries => UnmodifiableListView(_entries);

  void toggleTaskIndex(int i){
    _entries[i].toggleDone();
    notifyListeners();
  }

  void deleteTaskIndex(int i){
    _entries.removeAt(i);
    notifyListeners();
  }

}