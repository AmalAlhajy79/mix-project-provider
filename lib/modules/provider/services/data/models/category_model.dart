class CategoryModel {
  bool success;
  String message;
  List<DataCategory> data;

  CategoryModel({required this.success, required this.message, required this.data});

  CategoryModel.fromJson(Map<String, dynamic> json)
      : success = json['success'],
        message = json['message'],
        data = json['data'] != null
            ? List<DataCategory>.from(json['data'].map((v) => DataCategory.fromJson(v)))
            : [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = this.success;
    data['message'] = this.message;
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
}

class DataCategory {
  int id;
  String name;
  int serviceClassificationId;
  ServiceClassification? serviceClassification;

  DataCategory({
    required this.id,
    required this.name,
    required this.serviceClassificationId,
    required this.serviceClassification,
  });

  DataCategory.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        serviceClassificationId = json['service_classification_id'],
        serviceClassification = json['service_classification'] != null
            ? ServiceClassification.fromJson(json['service_classification'])
            : null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name'] = this.name;
    data['service_classification_id'] = this.serviceClassificationId;
    if (this.serviceClassification != null) {
      data['service_classification'] = this.serviceClassification!.toJson();
    }
    return data;
  }
}

class ServiceClassification {
  int id;
  String name;
  String category;

  ServiceClassification({
    required this.id,
    required this.name,
    required this.category,
  });

  ServiceClassification.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        category = json['category'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    return data;
  }
}




// class CategoryModel {
//   bool success;
//   String message;
//   List<Data> data;
//
//   CategoryModel({required this.success, required this.message, required this.data});
//
//   CategoryModel.fromJson(Map<String, dynamic> json)
//     : success = json['success'],
//     message = json['message'],
//       data = json['data'] != null
//           ? List<Data>.from(json['data'].map((v) => Data.fromJson(v)))
//           : [];
//       // data = new List<Data>();
//       // json['data'].forEach((v) {
//       //   data.add(new Data.fromJson(v));
//       // });
//
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Data {
//   int id;
//   String name;
//   int serviceClassificationId;
//
//   ServiceClassification serviceClassification=new ServiceClassification(id: 0, name: '', category: '');
//
//   Data(
//       {required this.id,
//         required this.name,
//         required this.serviceClassificationId,
//         required this.serviceClassification});
//
//   Data.fromJson(Map<String, dynamic> json)
//    : id = json['id'],
//     name = json['name'],
//     serviceClassificationId = json['service_classification_id'],
//     // createdAt = json['created_at'];
//     // updatedAt = json['updated_at'];
//     serviceClassification = json['service_classification'] != null
//         ? new ServiceClassification.fromJson(json['service_classification'])
//         : null;
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['service_classification_id'] = this.serviceClassificationId;
//     if (this.serviceClassification != null) {
//       data['service_classification'] = this.serviceClassification.toJson();
//     }
//     return data;
//   }
// }
//
// class ServiceClassification {
//   int id;
//   String name;
//   String category;
//   // String createdAt;
//   // String updatedAt;
//
//   ServiceClassification(
//       {required this.id, required this.name, required this.category});
//
//   ServiceClassification.fromJson(Map<String, dynamic> json)
//    : id = json['id'],
//     name = json['name'],
//     category = json['category'];
//     // createdAt = json['created_at'];
//     // updatedAt = json['updated_at'];
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['category'] = this.category;
//     // data['created_at'] = this.createdAt;
//     // data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
//
//
//
// // class CategoryModel {
// //   final int id;
// //   final String title;
// //   final String coverImage;
// //
// //   CategoryModel(
// //       {required this.id, required this.title, required this.coverImage});
// //
// //   //toDo
// //   factory CategoryModel.fromJson(Map<String,dynamic> json)=>CategoryModel(
// //       id: json['id'], title: json['title'], coverImage: json['coverImage']);
// //
// // }
