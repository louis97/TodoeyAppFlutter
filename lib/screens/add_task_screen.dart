import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildBottonSheet(BuildContext ctx, Function f) {
  TextEditingController controller= TextEditingController();
  String atributo;
  return Container(
    color: Color(0xff757575),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: controller,
              autofocus: true,
              style: TextStyle(
                color: Colors.lightBlueAccent,
              ),
              onChanged: (value) {
                atributo = value;
              },
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              print('add has been pressed $atributo');
              f(atributo);
              controller.clear();
              Navigator.of(ctx).pop();
            },
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    ),
  );
}
