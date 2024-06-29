import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import '../../../../../core/consts/app_assets.dart';
import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/app_text_form_feild.dart';
import '../components/auth_submit_button.dart';
import '../controllers/signup/signup_binding.dart';
import 'dart:io';

import '../controllers/signup/signup_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  static const name = '/SignUp';
  static final page =
      GetPage(name: name, page: () => SignUpScreen(), binding: SignUpBinding());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var border1 = OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(0.025 * size.width));
    return SafeArea(
        child: AppScaffold(
            withoutBackground: false,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppSVGs.logo,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Sign Up", style: TextStyle(fontSize: 8.w)),
                  Text(
                    "provider",
                    style: TextStyle(fontSize: 4.w),
                  ),
                  ...[
                    AppTextFormField(
                        hint: 'name',
                        controller: controller.nameController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                        }),
                    AppTextFormField(
                      hint: 'email',
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        if (val == null || val.isEmpty) return 'required';
                      },
                    ),
                    AppTextFormField(
                        hint: 'phone',
                        controller: controller.phoneController,
                        keyboardType: TextInputType.phone,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                        }),
                    AppTextFormField(
                        hint: 'city',
                        controller: controller.cityController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                        }),
                    AppTextFormField(
                        hint: 'state',
                        controller: controller.stateController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                        }),
                    Text(
                      "Enter the first document:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GetBuilder<SignUpController>(
                        builder: (_) => InkWell(
                              onTap: controller.selectImage1,
                              child: Center(
                                child: Container(
                                    width: 40.w,
                                    height: 40.w,
                                    color: AppColors.greyFieldLight,
                                    child: controller.image1 != null
                                        ? Image.file(
                                            File(controller.image1!),
                                            fit: BoxFit.cover,
                                          )
                                        : const Icon(
                                            Icons.photo_library_outlined)),
                              ),
                            )),
                    Text("Enter the second document:",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    GetBuilder<SignUpController>(
                        builder: (_) => InkWell(
                              onTap: controller.selectImage2,
                              child: Center(
                                child: Container(
                                    width: 40.w,
                                    height: 40.w,
                                    color: AppColors.greyFieldLight,
                                    child: controller.image2 != null
                                        ? Image.file(
                                            File(controller.image2!),
                                            fit: BoxFit.cover,
                                          )
                                        : const Icon(
                                            Icons.photo_library_outlined)),
                              ),
                            )),
                    AppTextFormField(
                        hint: 'Describe the first document',
                        controller: controller.descriptionController1,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                        }),
                    AppTextFormField(
                        hint: 'Describe the second document',
                        controller: controller.descriptionController2,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                        }),
                    AppTextFormField(
                      hint: 'password',
                      controller: controller.passwordController,
                      validator: (val) {
                        if (val == null || val.isEmpty) return 'required';
                        if (val.length < 6)
                          return 'password must  be at least 6 characters';
                      },
                      isPass: true,
                    ),
                    AppTextFormField(
                      hint: 'confirm password',
                      controller: controller.confirmPasswordController,
                      isPass: true,
                    ),
                  ].map((e) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.w),
                        child: e,
                      )),
                  SizedBox(
                    height: 5.w,
                  ),
                  Center(
                    child: AuthSubmitButton(onTap: controller.SignUp),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom
                  ),
                ],
              ),
            )));
  }
}
