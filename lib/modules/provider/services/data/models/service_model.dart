class ServiceModel {

  final int id;
  final String title;
  final String description;
  final String coverImage;
  final  int likes;
  final DateTime createdAt;

  ServiceModel(
      {
      required this.id,
      required this.title,
      required this.description,
      required this.coverImage,
      required this.likes,
      required this.createdAt
      });
  //todo
  factory ServiceModel.fromJson(Map<String,dynamic>json)=>
      ServiceModel(
            id:json['id'],
            title:json['title'],
            description:json['description'],
            coverImage:json['coverImage'],
            likes:json['likes'],
            createdAt:DateTime.parse(json['created_at']),
          );

}
