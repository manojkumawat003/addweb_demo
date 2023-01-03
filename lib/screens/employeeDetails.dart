import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/employeesData.dart';
import 'home/controller/controller.dart';

class EmployeDetails extends StatefulWidget {
  final List<Data> data;
  const EmployeDetails({super.key, required this.data});

  @override
  State<EmployeDetails> createState() => _EmployeDetailsState();
}

class _EmployeDetailsState extends State<EmployeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 169, 196),
      appBar: AppBar(
        title: Text("Employes Details"),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: widget.data.map((e) {
            return Column(children: [
              ListTile(
                title: Text(
                  e.employeeName!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Age: ${e.employeeAge}"),
                trailing: Text(
                  "\$ ${e.employeeSalary}",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider()
            ]);
          }).toList()),
        ),
      ),
    );
  }
}
