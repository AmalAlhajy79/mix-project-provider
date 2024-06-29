import 'package:get_storage/get_storage.dart';

class StorageHandler {
  StorageHandler._();

  static StorageHandler? _instance;

  factory StorageHandler() => _instance ??= StorageHandler._();

  final _storage = GetStorage();

  static Future<void> init()async{
    await GetStorage.init();
  }
   Future<void> setToken(String token)=>
     _storage.write('token', token);
  Future<void> removeToken()=>
      _storage.remove('token');
String get token => _storage.read('token');
bool get hasToken =>_storage.hasData('token');
}
