import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/core_components/pop_up.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../../services/presentation/screens/home.dart';
import '../../../data/data_source/auth_data_source.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;

  void login() async {
    if (!formKey.currentState!.validate()) return;

    _dataState = DataState(status: DataStatus.loading);
    showLoader();
    try {
      await AuthDataSource.login(
          email: emailController.text, password: passwordController.text);
      print("----------------------------------------------");
      _dataState = DataState(status: DataStatus.success);
      print("----------------------------------------------");

      Get.offAllNamed(HomeScreen.name);
      print("----------------------------------------------");

    } catch (e) {
      _dataState = DataState(status: DataStatus.error, massage: e.toString());
    }
    Get.back();
    if (status == DataStatus.error)
      showSnackBar(_dataState.massage);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
