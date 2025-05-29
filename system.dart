import 'Employee.dart';
import 'supervisor.dart';

class System {
  List<Employee> employees = [];
  List<Supervisor> supervisors = [];

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void addSupervisor(Supervisor supervisor) {
    supervisors.add(supervisor);
  }

  void assignEmployee(String adminName, String employeeName) {
    Supervisor? supervisor;
    Employee? employee;

    try {
      supervisor = supervisors.firstWhere((sup) => sup.name == adminName);
    } catch (e) {
      supervisor = null;
    }

    try {
      employee = employees.firstWhere((emp) => emp.name == employeeName);
    } catch (e) {
      employee = null;
    }

    if (supervisor != null && employee != null) {
      supervisor.addEmployee(employee);
      print(
        'Employee "$employeeName" has been assigned to supervisor "$adminName".',
      );
    } else {
      print('Supervisor or employee not found.');
    }
  }

  void employeeCheckin(String employeeID, DateTime checkInTime) {
    Employee? employee;

    // Find employee by ID
    try {
      employee = employees.firstWhere((emp) => emp.id == employeeID);
    } catch (e) {
      employee = null;
    }

    if (employee != null) {
      print('Employee ID $employeeID checked in at $checkInTime.');
    } else {
      print('Employee with ID $employeeID not found.');
    }
  }
}
