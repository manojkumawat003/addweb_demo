import 'package:addweb_demo/models/employeesData.dart';
import 'package:get/get.dart';

import '../../../network/networkService.dart';

class HomeController extends GetxController {
  RxBool _isDataLoading = false.obs;
  bool get isDataLoading => _isDataLoading.value;
  set isDataLoading(bool value) => _isDataLoading.value = value;
  EmployeesData employeesData = EmployeesData();
  @override
  onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    isDataLoading = true;
    update();
    try {
      employeesData = (await NetworkServices().fetchEmployesData())!;

      isDataLoading = false;
      update();
    } catch (e) {
      isDataLoading = false;
      update();
      rethrow;
    }
  }
}
