import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

    final  bool ischecked ;
    final String taskTitle ;
    final void   Function (bool?) checkboxcallback;
     void   Function()  Longpresscallback;
   TaskTile ({required this.ischecked,required this.taskTitle,required this.checkboxcallback,required this.Longpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:  Longpresscallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 30,
            decoration: ischecked ?
                TextDecoration.lineThrough : null,
        ),
      ),
      trailing:  Checkbox(
        activeColor: Colors.black,
        value: ischecked,
       onChanged: checkboxcallback,
      ),
    );
  }
}
