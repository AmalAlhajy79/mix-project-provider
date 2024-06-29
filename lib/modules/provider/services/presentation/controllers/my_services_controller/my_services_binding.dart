import 'package:get/get.dart';

import 'my_services_controller.dart';

class MyServicesBinding extends Bindings{

  @override
  void dependencies() {
    Get.put(MyServicesController());
  }
}