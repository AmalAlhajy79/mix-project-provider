part 'data_status.dart';
class DataState<T>{
  final T? data;
  final String massage;
  final DataStatus status;

  const DataState
      ({this.data, this.massage = '', this.status = DataStatus.init});
}