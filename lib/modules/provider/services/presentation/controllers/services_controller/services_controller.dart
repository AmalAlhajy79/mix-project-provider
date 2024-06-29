import 'package:get/get.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../data/data_source/services_data_source.dart';
import '../../../data/models/service_model.dart';

class ServicesController extends GetxController{
  DataState<List<ServiceModel>> _dataState =DataState(status: DataStatus.loading);

  List<ServiceModel> get data=>_dataState.data!;

  String get error=>_dataState.massage;

  DataStatus get status=>_dataState.status;

  void loadData()async{
     _dataState =DataState(status: DataStatus.loading);
    update();
        try {
      var result = await ServicesDataSource.getServices();
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