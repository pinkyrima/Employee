class Employee{
int id;
String name;
int salary;

Employee(this.salary);

void promote(){
 double pro = (0.25* salary) ;
 double proSalary= (pro + salary) ;
 print("Promote: $proSalary");

}

void demote(){
  double de= (0.25 * salary) ;
  double deSalary=(de-salary) ;
  print(deSalary);
}

void information(int id,String name,int salary){
  print("\n");
  print("Employee ID: $id");
  print("Employee Name: $name ");
  print("Employee Salary: $salary");

}



}