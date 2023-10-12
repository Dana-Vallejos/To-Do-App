import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  //first time opening the app
  void CreateInitialData() {
    toDoList = [
      ["Cook diner", false],
      ["Read Startup Book", false],
    ];
  }

  //load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update data
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
