import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
import 'package:mix_gradition_progect/modules/provider/auth/presentation/screens/sign_up_screen.dart';
import '../../../../../core/consts/app_assets.dart';
import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/app_text_form_feild.dart';
import '../../../services/presentation/screens/home.dart';
import '../components/auth_submit_button.dart';
import '../controllers/login/login_binding.dart';
import '../controllers/login/login_controller.dart';
import '../controllers/login/login_middleware.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);
  static const name = '/login';
  static final page = GetPage(
      name: name,
      page: () => const LoginScreen(),
      middlewares: [LoginMiddleware()],
      binding: LoginBinding());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AppScaffold(
            withoutBackground: false,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(5.w),
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 5.w,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AppSVGs.logo,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text("Login", style: TextStyle(fontSize: 8.w)),
                    Text(
                      "provider",
                      style: TextStyle(fontSize: 4.w),
                    ),
                    ...[
                      SizedBox(
                        height: 2.w,
                      ),
                      AppTextFormField(
                        hint: 'email',
                        controller: controller.emailController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return 'required';
                          if (!val.isEmail) return 'invalid email form';
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),

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
                    ].map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.w),
                          child: e,
                        )),
                    SizedBox(
                      height: 5.w,
                    ),
                    AuthSubmitButton(
                      onTap:controller.login

                    ),
                    Center(
                        child: TextButton(
                            onPressed: () => Get.toNamed(SignUpScreen.name),
                            child: Text(
                              "Or Create an account",
                              style: TextStyle(color: AppColors.blue),
                            )))
                  ],
                ),
              ),
            )));
  }
}
