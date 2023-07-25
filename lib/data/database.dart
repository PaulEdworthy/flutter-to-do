import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  final _todo_box = Hive.box('todo_box');

  List toDoList = [];

//  run this the first time EVER opening the app
  void createInitialData() {
    toDoList = [
      ["Create todos", false],
    ];
  }

//  load the data from the db
  void loadData() {
    toDoList = _todo_box.get("TODOLIST");
  }

//  update the database
  void updateDatabase() {
    _todo_box.put("TODOLIST", toDoList);
  }
}
