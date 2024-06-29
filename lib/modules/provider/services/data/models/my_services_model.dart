class MyServicesModel {
  bool success=false;
  String message='';
  List<Data> data=[];

  MyServicesModel({required this.success, required this.message, required this.data});
  MyServicesModel.fromJson(Map<String, dynamic> json)
      : success = json['success'],
        message = json['message'],
        data = json['data'] != null
            ? List<Data>.from(json['data'].map((v) => Data.fromJson(v)))
            : [];
  // MyServicesModel.fromJson(Map<String, dynamic> json) {
  //   success = json['success'];
  //   message = json['message'];
  //   if (json['data'] != null) {
  //     data = List<Data>();
  //     json['data'].forEach((v) {
  //       data.add(new Data.fromJson(v));
  //     });
  //   }
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id=0;
  String name='';
  String category='';


  Data({required this.id, required this.name, required this.category});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;

    return data;
  }
}


// class MyServicesModel{
//   final int id;
//   final String title;
//   final String coverImage;
//
//   MyServicesModel(
//       {required this.id, required this.title, required this.coverImage});
//
//   //toDo
//   factory MyServicesModel.fromJson(Map<String,dynamic> json)=>MyServicesModel(
//       id: json['id'], title: json['title'], coverImage: json['coverImage']);
//
// }