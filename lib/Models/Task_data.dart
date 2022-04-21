import 'package:flutter/foundation.dart';
import 'package:todoz/Models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task>? _TAsks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy milk'),
    Task(name: 'buy beard')
  ];

  int? get taskcount {
    return _TAsks?.length;
  }

  void addtask(String? NewTask) {
    final task = Task(name: NewTask!);
    _TAsks?.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task>? get tAsk{
    return UnmodifiableListView(_TAsks!);
  }
  void UpdateTask(Task task){
    task.toggledone();
    notifyListeners();
  }
  DeleteTask(Task task){
    _TAsks?.remove(task);
    notifyListeners();
  }
}
