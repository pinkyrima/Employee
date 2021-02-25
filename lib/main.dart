import 'package:employee/Admin.dart';
import 'package:employee/Developer.dart';
import 'package:employee/Employee.dart';
import 'package:employee/QA.dart';



void main() {


  int countDemotedDeveloper;
  int countDemotedQA;



  Admin hr =Admin(35000);
  hr.information(6, "Sky", 35000);
  hr.promote();
  Admin nonHR=Admin(40000);
  nonHR.information(7, "Nilima", 40000);



  Developer appDeveloper = Developer(30,5);
  appDeveloper.information(5, "Lucky", 35000);
  appDeveloper.assignTask(20);
  appDeveloper.completeTask(25);



  Developer webDeveloper= Developer(20,6);
  webDeveloper.information(4, "Bijoy", 26000);
  webDeveloper.assignTask(5);
  webDeveloper.completeTask(22);


  Developer phpDeveloper= Developer(10,2);
  phpDeveloper.information(3, "Ayan", 30000);
  phpDeveloper.assignTask(3);
  phpDeveloper.completeTask(12);
  phpDeveloper.isAvailableForNewTask();



  Developer javaDeveloper= Developer(12,6);
  javaDeveloper.information(2, "Tamim", 25000);
  javaDeveloper.assignTask(2);
  javaDeveloper.completeTask(20);
  javaDeveloper.isAvailableForNewTask();


  QA qa = QA(20,6 );

  qa.information(14, "MD", 32500);
  qa.isAvailableForNewTask();
  qa.promoteDeveloper(appDeveloper);


  if(appDeveloper.totalTasks>50){
    qa.promoteDeveloper(appDeveloper);

  }else if(webDeveloper.totalTasks<10){
    qa.demoteDeveloper(webDeveloper);
    countDemotedDeveloper++;
  }else{}

  if(countDemotedDeveloper == 0){
    qa.demote();
    countDemotedQA++;
  }else {}

  if(countDemotedQA == 0){
    hr.demote();


  }else{}




Employee employee=Employee(30000);
employee.information(1, "Tinni", 30000);
employee.promote();


}


