import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: Provider.of<TasksProvider>(context).taskCount,
            itemBuilder: (BuildContext context, int index) {
              return TaskTile(
                  title: taskData.getEntries[index].description,
                  isChecked: taskData.getEntries[index].isDone,
                  callback: (value) {
                    taskData.toggleTaskIndex(index);
                  },
                callbackDelete: (){
                  taskData.deleteTaskIndex(index);
                },
              );
            });
      },
    );
  }
}
