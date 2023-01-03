import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/employeesData.dart';

const BASE_URL = "https://dummy.restapiexample.com/api/v1";

class NetworkServices {
  Future<EmployeesData?> fetchEmployesData() async {
    var res;
    var request = http.Request('GET', Uri.parse('$BASE_URL/employees'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      res = await response.stream.bytesToString();
      print(res);
    } else {
      print(response.reasonPhrase);
    }
    return EmployeesData.fromJson(jsonDecode(res));
  }
}
