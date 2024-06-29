import 'package:get/get.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../data/data_source/services_data_source.dart';
import '../../../data/models/my_services_model.dart';

class MyServicesController extends GetxController{
  DataState<List<Data>> _dataState =DataState(status: DataStatus.loading);

  List<Data> get data=>_dataState.data!;

  String get error=>_dataState.massage;

  DataStatus get status=>_dataState.status;

  void loadData()async{
    print(".........load data..............");
    _dataState =DataState(status: DataStatus.loading);
    update();
    try {
      print(".........start..............");
      var result = await ServicesDataSource.getMyServices();
      print(".........result..............");
      print(result[0]);
      _dataState = DataState(status: DataStatus.success, data: result);
    }
    catch(e){
      _dataState=DataState(status: DataStatus.error,massage: e.toString());
    }
    update();
  }

  @override
  void onReady() {
    super.onReady();
    loadData();
  }
}