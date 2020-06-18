import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key key, @required this.title, this.isChecked, this.callback, this.callbackDelete})
      : super(key: key);

  final String title;
  final bool isChecked;
  final Function callback;
  final Function callbackDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: callbackDelete,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:Checkbox(
        onChanged: callback,
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}