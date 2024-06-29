//ToDo (in the last of second lessen)
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../core/storage/storage_handler.dart';
import '../../../../services/presentation/screens/categorise_screen.dart';

class LoginMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route) {
// if(StorageHandler().hasToken){
//   return const RouteSettings(
//     name: CategoriseScreen.name
//   );
// }
return null;
  }
}