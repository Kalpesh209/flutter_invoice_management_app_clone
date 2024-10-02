import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Models/employerr_model.dart';

class ProviderController extends ChangeNotifier {
  List<EmployeeModel> employees = [];

  addEmployee(EmployeeModel employee) {
    employees.add(employee);
    notifyListeners();
  }
}
