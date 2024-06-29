
import 'package:get/get.dart';

import 'add_service_controller.dart';

class AddServiceBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(AddServiceController());
  }

}