
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todoz/Models/Task_data.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? NewTask;
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            onChanged: (newText){
                NewTask = newText;
            },

          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
              child: Text('ADD'),
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addtask(NewTask!);
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
