import 'package:employee/Employee.dart';

class Developer extends Employee{
  int totalTasks;
  int currentTasks;


  Developer(this.totalTasks, this.currentTasks) : super(30000);

  void assignTask(int amount){
   totalTasks= currentTasks+amount;

   print("Total Task: $totalTasks");
  }

  void completeTask(int amount){

    if(totalTasks<0){
      currentTasks = totalTasks-amount;
    }

    print("Complete Task: $currentTasks");
  }


  bool isAvailableForNewTask(){


    if(currentTasks<5){
      print("Available");
      return true;
    }else
      print("Not Available");
      return false;
  }

  }

  @override
  void information(int id, String name, int salary) {
    // TODO: implement information
    print("\n");
    print("Employee ID: $id");

    print("Employee Name: $name");

    print("Employee Salary: $salary");

  }
