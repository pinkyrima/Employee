import 'package:employee/Developer.dart';
import 'package:employee/Employee.dart';

class QA extends Employee{

 int totalTasks;
 int currentTasks;

 QA(this.totalTasks, this.currentTasks) : super(0);

  void assignTask(int amount){
  totalTasks=currentTasks+amount;
  }

  void completeTask(int amount){
   //currentTasks=totalTasks-amount;
  amount = totalTasks-currentTasks;
   print(amount);
  }

  assignTaskToDeveloper(Developer dev, int amount){
 dev.assignTask(amount);

}

 completeTaskToDeveloper(Developer dev, int amount){
 dev.completeTask(amount);
 }

 promoteDeveloper(Developer dev){
   dev.promote();
  }

  demoteDeveloper(Developer dev){
  dev.demote();

 }

 @override
  void information(int id, String name, int salary) {
    // TODO: implement information
  print("\n");
  print("Employee ID: $id");
  print("Employee Name: $name");
  print("Employee Salary:$salary ");

  }
  bool isAvailableForNewTask(){

   if(currentTasks<5){
   print("Available");
   return true;
  }else
   print("not available");
   return false;
 }

}


