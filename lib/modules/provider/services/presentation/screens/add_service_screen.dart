// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:mix_gradition_progect/core/ui_sizer/app_sizer.dart';
// import '../../../../../core/consts/app_assets.dart';
// import '../../../../../core/consts/app_colors.dart';
// import '../../../../../core/core_components/app_scaffold.dart';
// import '../../../../../core/core_components/app_text_form_feild.dart';
// import '../../../../../core/core_components/select_button.dart';
// import '../../../../../core/core_components/status_component.dart';
// import '../../../auth/presentation/components/auth_submit_button.dart';
// import '../../../auth/presentation/controllers/signup/signup_controller.dart';
// import '../../data/models/category_model.dart';
// import '../controllers/add_services_controller/add_service_binding.dart';
// import '../controllers/add_services_controller/add_service_controller.dart';
//
// class AddServiceScreen extends GetView<AddServiceController> {
//   const AddServiceScreen({super.key});
//
//   static const name = '/AddService';
//   static final page = GetPage(
//       name: name, page: () => AddServiceScreen(), binding: AddServiceBinding());
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: AppScaffold(
//             withoutBackground: false,
//             body: SingleChildScrollView(
//               padding: EdgeInsets.all(5.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Align(
//                     alignment: Alignment.center,
//                     child: SvgPicture.asset(
//                       AppSVGs.logo,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Text("Add Service", style: TextStyle(fontSize: 5.w)),
//                   ...[
//                     AppTextFormField(
//                         hint: 'Service Name',
//                         controller: controller.nameController,
//                         validator: (val) {
//                           if (val == null || val.isEmpty) return 'required';
//                         }),
//                     AppTextFormField(
//                         hint: 'Service Discription',
//                         controller: controller.descriptionController,
//                         validator: (val) {
//                           if (val == null || val.isEmpty) return 'required';
//                         }),
//                     Text("Enter a photo of your service:",
//                         style: TextStyle(fontWeight: FontWeight.bold)),
//                     GetBuilder<AddServiceController>(
//                         builder: (_) => InkWell(
//                               onTap: controller.selectImage,
//                               child: Center(
//                                 child: Container(
//                                     width: 40.w,
//                                     height: 40.w,
//                                     color: AppColors.greyFieldLight,
//                                     child: controller.image != null
//                                         ? Image.file(
//                                             File(controller.image!),
//                                             fit: BoxFit.cover,
//                                           )
//                                         : const Icon(
//                                             Icons.photo_library_outlined)),
//                               ),
//                             )),
//
//                     FormField<CategoryModel?>(
//                       validator: (_) => !controller.hasCategory
//                           ? 'category is required'.tr
//                           : null,
//                       builder: (FormFieldState<CategoryModel?> field) => Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           GetBuilder<AddServiceController>(
//                               builder: (_) => StatusComponent(
//                                     status: controller.categoriesState.status,
//                                     onSuccess: (_) =>
//                                         SelectButton<CategoryModel>(
//                                       title: controller.category,
//                                       converter: (model) => model.data[0].name,
//                                       onSelected: (val) {
//                                         controller.selectCategory(val);
//                                         field.didChange(val);
//                                       },
//                                       options: controller.categoriesState,
//                                     ),
//                                     onInit: (_) => SelectButton.loading(),
//                                     onLoading: (_) => SelectButton.loading(),
//                                     onError: (BuildContext context) {
//                                       return const Text("Erorr!");
//                                     },
//                                   )),
//                           if (field.hasError)
//                             Text(
//                               field.errorText!,
//                               style: TextStyle(
//                                   color: context.theme.colorScheme.error),
//                             ).paddingSymmetric(horizontal: 5.w)
//                         ],
//                       ),
//                     ),
//
//                     AppTextFormField(hint: 'Service Price',
//                         controller: controller.priceController,
//                         validator: (val) {
//                           if (val == null || val.isEmpty) return 'required';
//                         }),
//                     AppTextFormField(hint: 'PhoneNumber',
//                         controller: controller.phoneController,
//                         validator: (val) {
//                           if (val == null || val.isEmpty) return 'required';
//                         }),
//                     //
//                     // SwitchListTile(
//                     //   onChanged: (_){
//                     //     controller.changeActive();
//                     //   },
//                     //   value: controller.isActive,
//                     //   title: Text(controller.active),
//                     //   subtitle: Text('change Active'),
//                     // )
//                   ].map((e) => Padding(
//                         padding: EdgeInsets.symmetric(vertical: 2.w),
//                         child: e,
//                       )),
//                   SizedBox(
//                     height: 5.w,
//                   ),
//                   Center(
//                     child: AuthSubmitButton(onTap: controller.addService),
//                   ),
//                 ],
//               ),
//             )));
//   }
// }
