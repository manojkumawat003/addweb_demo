import 'package:addweb_demo/screens/employeeDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final HomeController fc = Get.put(HomeController());
    return GetX<HomeController>(builder: (hc) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 169, 196),
        appBar: AppBar(
          title: Text("Employes Record"),
          backgroundColor: Colors.pink,
        ),
        body: hc.isDataLoading
            ? Center(
                child: CircularProgressIndicator(
                color: Colors.pink,
              ))
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    ListTile(
                      onTap: () {
                        Get.to(EmployeDetails(
                            data: hc.employeesData.data!
                                .where((element) => element.employeeAge! < 30)
                                .toList()));
                      },
                      title: Text("20 - 30"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(EmployeDetails(
                            data: hc.employeesData.data!
                                .where((element) =>
                                    element.employeeAge! >= 30 &&
                                    element.employeeAge! < 40)
                                .toList()));
                      },
                      title: Text("30 - 40"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(EmployeDetails(
                            data: hc.employeesData.data!
                                .where((element) =>
                                    element.employeeAge! >= 40 &&
                                    element.employeeAge! < 50)
                                .toList()));
                      },
                      title: Text("40 - 50"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(EmployeDetails(
                            data: hc.employeesData.data!
                                .where((element) =>
                                    element.employeeAge! >= 50 &&
                                    element.employeeAge! < 60)
                                .toList()));
                      },
                      title: Text("50 - 60"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(EmployeDetails(
                            data: hc.employeesData.data!
                                .where((element) => element.employeeAge! >= 60)
                                .toList()));
                      },
                      title: Text("60+"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                  ]),
                ),
              ),
      );
    });
  }
}
