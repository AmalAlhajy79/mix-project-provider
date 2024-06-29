import 'package:flutter/foundation.dart';
import '../../../../../core/consts/api_const_provider.dart';
import '../../../../../core/network/network_helper.dart';
import '../../../../../core/storage/storage_handler.dart';
import '../models/category_model.dart';
import '../models/fashfosh_model.dart';
import '../models/my_services_model.dart';
import '../models/service_model.dart';

class ServicesDataSource {
  static Future<List<ServiceModel>> getServices() async {
    //todo
    var result = await NetworkHelper().get(ApiConst.myServices);
    print(">>>>>>>>>>>>>>>>>>1.......");
    print(result.data[0]);
    print(">>>>>>>>>>>>>>>>>>2.......");
   List myServices = result.data["data"];
    print(">>>>>>>>>>>>>>>>>>3.......");
    return myServices.map((e) => ServiceModel.fromJson(e)).toList();
  }

//
// static Future<List<FashfoshModel>> getCategory()async{
//   await Future.delayed(Duration(seconds: 5 ));
//   return List.generate(10, (index) => FashfoshModel());
// }
//
//

  static Future<List<DataCategory>> getCategories() async {
    //todo
    var result = await NetworkHelper().get(ApiConst.categorise);
    print('..........start in method getCategories......');
    final jsonData = result.data;
    print(jsonData);
    print("AAAAAAAAAAAAAAAAAAAA");
    return CategoryModel.fromJson(jsonData).data;
   // return myServices.map((e) => CategoryModel.fromJson(e)).toList();
  }

  static Future<List<Data>> getMyServices() async {
    print("Aaaaaaaaaaaaaaaaaaaaaaaaaa");

    //todo
    var result = await NetworkHelper().get(ApiConst.myServices);
    print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb");
    //print(StorageHandler().token);

    print(result.data);
    print("...................rrrrrr...............");
    List myServices = result.data["data"];
    print(myServices);

    final jsonData = result.data;
    print(jsonData);
    print("AAAAAAAAAAAAAAAAAAAA");
    return MyServicesModel.fromJson(jsonData).data;
    /////

  //  return MyServicesModel.fromJson(result).myServices;//myServices.map((e) => MyServicesModel.fromJson(e)).toList();
  }

/////////////////////////////////////////////////////////////////////

  static Future<void> addService({
    required String name,
    required String description,
    required String service_price,
    required String phone_number,
    required int typeId,
    required String file,

  }) async {
    var result = await NetworkHelper().post(ApiConst.addService, body: {
      'name': name,
      'description': description,
      'service_price': service_price,
      'phone_number': phone_number,
      'service_classification_id':3,
      'type_id':typeId,
      'call_response_active':true, // TODO
      // TODO 'provider_id':, لازم يحذفوها الباك بيقدررو يعرفوها من التوكن فبلا غلاظة يشيلوها
    },
      files: {
      'service_image':file// todo ضيفي الصورة متل الريجيستر
      }
    );
  }
}
