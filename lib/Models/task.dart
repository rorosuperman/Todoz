
//a class of tasks which has two properties and a method
class Task {

  Task({required this.name,this.isdone = false});

  final String name;
  bool isdone;

  //method of the class task which sets whatever is the value of isdone property to its opposite which is
  //if true it will become false
void toggledone(){
  isdone = ! isdone;
}

}