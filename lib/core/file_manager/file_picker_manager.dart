import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'file_manager.dart';
import 'package:permission_handler/permission_handler.dart';

class FilePickerManager extends FileManager {

  FilePickerManager._():super.create();

  static FilePickerManager? _instance;

  factory FilePickerManager() => _instance ??= FilePickerManager._();


  bool _isPermitted = false;

  Future<void> checkPermissions()async{
    if(_isPermitted) return;


    _isPermitted = await Permission.storage.isGranted;
    if(!_isPermitted){
      _isPermitted = await Permission.storage.request().isGranted;
    }
  }


  @override
  Future<String?> getFileImagePath() async{
    await checkPermissions();
    if(!_isPermitted) return null;
    var file = await ImagePicker().pickImage(source: ImageSource.gallery);
    return file?.path;
  }


  @override
  Future<String?> getFilePdfPath() async{
    await checkPermissions();
    if(!_isPermitted) return null;
    var path = await FilePicker.platform.pickFiles(
        allowedExtensions: ['pdf'],
        type: FileType.custom,
        allowMultiple: false
    );
    return path?.files.firstOrNull?.path;
  }

}