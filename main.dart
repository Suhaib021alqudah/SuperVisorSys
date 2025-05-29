import 'Employee.dart';
import 'supervisor.dart';
import 'system.dart';

void main() {
  var system = System();

  var emp1 = Employee(id: 'E1', name: 'Ali', yearsOfExperience: 5);
  var sup1 = Supervisor(id: 'S1', name: 'Ahmed', yearsOfExperience: 10);

  system.addEmployee(emp1);
  system.addSupervisor(sup1);
  system.assignEmployee('Ahmed', 'Ali');
  system.employeeCheckin('E1', DateTime.now());
}
