import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/modules/provider/auth/presentation/screens/login_screen.dart';

import '../../../../../../core/core_components/pop_up.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../../../../core/file_manager/file_manager.dart';
import '../../../../services/presentation/screens/home.dart';
import '../../../data/data_source/auth_data_source.dart';

class SignUpController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController descriptionController1 = TextEditingController();
  final TextEditingController descriptionController2 = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  String? _image1;
  String? _image2;

  String? get image1 => _image1;
  String? get image2 => _image2;

  Future<void> selectImage1() async {
    _image1 = await FileManager().getFileImagePath();
    update();
  }
  Future<void> selectImage2() async {
    _image2 = await FileManager().getFileImagePath();
    update();
  }
  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;

  void SignUp() async {
    print("aaaaaaaaaaaaaaaaaaaaaaaaaa");

    _dataState = DataState(status: DataStatus.loading);
    print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb");

    showLoader();
    print("ccccccccccccccccccccccccc");

    try {
      print("dddddddddddddddddddddddddddddddddddddddd");

      await AuthDataSource.register(
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          name: nameController.text,
          phoneNumber: phoneController.text,
          city: cityController.text,
          state: stateController.text,
          description1: descriptionController1.text,
          description2: descriptionController2.text,
          file1: image1!,
          file2: image2!
      );
      print("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");

      _dataState = DataState(status: DataStatus.success);

      Get.offAllNamed(LoginScreen.name);
    }
    catch (e) {
      _dataState = DataState(status: DataStatus.error, massage: e.toString());
    }
    Get.back();
    if (status == DataStatus.error) showSnackBar(_dataState.massage);
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    phoneController.dispose();
    cityController.dispose();
    stateController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
