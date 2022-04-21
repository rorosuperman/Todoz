import 'package:flutter/material.dart';
import 'package:todoz/Screens/AddTaskScreen.dart';
import 'package:provider/provider.dart';
import '../Models/Task_data.dart';
import '../Widgets/TaskList.dart';

class TaskScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffEDE6DB),
          //once this is pressed a bottom sheet shoud appear to add new tasks
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(
                            topLeft:
                                Radius.circular(
                                    30),
                            topRight:
                                Radius.circular(
                                    30))));
          },
          child: Icon(
            Icons.add,
            color: Color(0xff1A3C40),
          )),
      backgroundColor: Color(0xff417D7A),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60,
                left: 30,
                right: 30,
                bottom: 30),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children:  [
                //put it in the circleAvatar
                CircleAvatar(
                  radius: 30,
                  //make a circle for the icon
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Color(0xffEDE6DB),
                  ),
                  backgroundColor:
                      Color(0xFF1A3C40),
                ),
                //this is the text under the icon
                //adding maybe a sizedBox
                SizedBox(
                  height: 15,
                ),
                Text(
                  'TodoZ',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffEDE6DB)),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskcount} Tasks",
                  style: TextStyle(
                      color: Color(0xffEDE6DB),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  color: Color(0xff1D5C63),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
