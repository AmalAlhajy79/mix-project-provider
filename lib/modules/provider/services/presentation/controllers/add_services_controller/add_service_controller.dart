// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import '../../../../../../core/core_components/pop_up.dart';
// import '../../../../../../core/data_state/data_state.dart';
// import '../../../../../../core/file_manager/file_manager.dart';
// import '../../../data/data_source/services_data_source.dart';
// import '../../../data/models/category_model.dart';
// import '../../screens/home.dart';
//
// class AddServiceController extends GetxController{
//
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController descriptionController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController priceController = TextEditingController();
//
//   CategoryModel? _selectedCategory;
//   String? _image;
//
//   String? get image => _image;
//
//   Future<void> selectImage() async {
//     _image = await FileManager().getFileImagePath();
//     update();
//   }
//   String get category => _selectedCategory?.title ?? 'Select Category';
//
//   bool get hasCategory=> _selectedCategory != null;
//
//   DataState<List<CategoryModel>> _categoriesState = const DataState<List<CategoryModel>>();
//
//   DataState<List<CategoryModel>> get categoriesState => _categoriesState;
//
//   void loadCategories()async{
//     _categoriesState = const DataState<List<CategoryModel>>(
//         status: DataStatus.loading
//     );
//     update();
//     try{
//       var result = await ServicesDataSource.getCategories();
//       _categoriesState = DataState(status: DataStatus.success, data: result);
//     }
//     catch(e){
//       _categoriesState=DataState(status: DataStatus.error,massage: e.toString());
//     }
//     update();
//   }
//   void selectCategory(CategoryModel category){
//     _selectedCategory = category;
//     update();
//   }
//
//   bool? _isActive=true;
//   void changeActive()async{
//       _isActive= !_isActive!;
//       update();
//   }
//   String? active;
// bool? get isActive=>_isActive;
//
//   @override
//   void onReady() {
//     super.onReady();
//     loadCategories();
//   }
//
//
//
//   DataState<void> _dataState = DataState<void>();
//
//   DataStatus get status => _dataState.status;
//
//   void addService() async {
//     _dataState = DataState(status: DataStatus.loading);
//     showLoader();
//     try {
//       await ServicesDataSource.addService(
//         name: nameController.text,
//         description: descriptionController.text,
//         phone_number: phoneController.text,
//         service_price: priceController.text,
//         typeId: _selectedCategory!.id,
//           file: image!,
//       );
//
//       _dataState = DataState(status: DataStatus.success);
//
//       Get.offAllNamed(HomeScreen.name);
//     }
//    catch (e) {
//       _dataState = DataState(status: DataStatus.error, massage: e.toString());
//     }
//     Get.back();
//     if (status == DataStatus.error) showSnackBar(_dataState.massage);
//   }
//
//   @override
//   void dispose() {
//     nameController.dispose();
//     phoneController.dispose();
//     descriptionController.dispose();
//     priceController.dispose();
//     super.dispose();
//   }
//
//
//
//   final _selectedValue = 'Option 1'.obs;
//   String get selectedValue => _selectedValue.value;
//
//   void setSelectedValue(String value) {
//     _selectedValue.value = value;
//   }
//
//   List<String> get options => ['Option 1', 'Option 2', 'Option 3'];
// }