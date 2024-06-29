import 'package:flutter/cupertino.dart';

import '../../../../../core/consts/api_const_provider.dart';
import '../../../../../core/network/network_helper.dart';
import '../../../../../core/storage/storage_handler.dart';

class AuthDataSource {
  static Future<void> register({
    required String name,
    required String email,
    required String phoneNumber,
    required String city,
    required String state,
    required String description1,
    required String description2,
    required String password,
    required String confirmPassword,
    required String file1,
    required String file2,
  }) async {
    var response = await NetworkHelper().post(ApiConst.register, body: {
      'name': name,
      'email': email,
      'phone_number': phoneNumber,
      'password': password,
      'adress': 'City : $city , State : $state',
      'password_confirmation':confirmPassword,
      'documents[0][document_type]':description1,
      'documents[1][document_type]':description2,
    },
      files: {
        'documents[0][file]':file1,
        'documents[1][file]':file2,
      }
    );
    // ToDo check token
    await StorageHandler().setToken(response.data['token']);
  }

  static Future<void> login({
    required String email,
    required String password
})async{
    var response=await NetworkHelper().post(ApiConst.login,body: {
      'email':email,
      'password':password
    });
    StorageHandler().setToken(response.data['token']);
  }
}
