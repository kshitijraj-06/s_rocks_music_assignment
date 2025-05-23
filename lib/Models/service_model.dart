class ServiceModel {
  final String id;
  final String title;
  final String description;
  final String iconData;
  final String bgImage;

  const ServiceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.iconData,
    required this.bgImage,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> map, String docID) {
    return ServiceModel(
      id: docID,
      title: map['title'],
      description: map['description'],
      iconData: map['iconData'],
      bgImage: map['bgImage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'title': title, 'description': description, 'iconData': iconData, 'bgImage': bgImage};
  }
}
