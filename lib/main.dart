import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mix_gradition_progect/modules/provider/services/presentation/screens/categorise_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'core/storage/storage_handler.dart';
import 'modules/provider/auth/presentation/screens/login_screen.dart';
import 'modules/provider/auth/presentation/screens/sign_up_screen.dart';
import 'modules/provider/services/presentation/screens/home.dart';
import 'modules/provider/services/presentation/screens/services_screen.dart';


void main() async{
  await StorageHandler.init();
  print(await Permission.manageExternalStorage.request().isDenied);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        ServicesScreen.page,
        LoginScreen.page,
        HomeScreen.page,
        SignUpScreen.page,
        CategoriseScreen.page,
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:LoginScreen.name ,
     );
  }
}
