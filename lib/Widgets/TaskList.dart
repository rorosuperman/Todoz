import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoz/Models/Task_data.dart';

import 'TaskTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //going to use a listview builder
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context,index) {
          final task = taskData.tAsk![index];
          return TaskTile(
            Longpresscallback: (){taskData.DeleteTask(task);},
            ischecked: task.isdone,
            taskTitle:  task.name,
            checkboxcallback:
                (bool? checkboxState) {
              taskData.UpdateTask(task);
            },
          );
        },

          itemCount:  taskData.taskcount, );
      },
    );
      }
      }

