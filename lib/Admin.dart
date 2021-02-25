import 'package:employee/Employee.dart';

class Admin extends Employee{
  bool isHR=true;

  Admin(int salary) : super(0);


  @override
  void promote() {

    if(isHR){
     int pro=30*salary;
     int proSalary=(pro+salary);
      print(proSalary);
    }else{
      int pro=50*salary;
      int proSalary=(pro+salary);
      print(proSalary);
    }
  }

  @override
  void demote() {

    // TODO: implement demote
    if(isHR){
      int de=15*salary;
      int deSalary=salary-de;
      print(deSalary);

    }else{
      int de=10*salary;
      int deSalary=salary-de;
      print(deSalary);
    }
  }

  @override
  void information(int id, String name, int salary) {
    // TODO: implement information
    print("Employee ID: ");
    print("$id");

    print("Employee Name: ");
    print("$name");

    print("Employee Salary: ");
    print("$salary");
  }
}