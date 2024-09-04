import 'dart:convert';

class Restaurant {
  final String name;
  final String photoUrl;
  final double stars;
  final List<String> foodCategories;

  Restaurant({
    required this.name,
    required this.photoUrl,
    required this.stars,
    required this.foodCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'photoUrl': photoUrl,
      'stars': stars,
      'foodCategories': foodCategories,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      name: map['name'] as String,
      photoUrl: map['photoUrl'] as String,
      stars: map['stars'] as double,
      foodCategories:
          List<String>.from(map['foodCategories'].map((x) => x.toString())),
    );
  }

  String toJson() => json.encode(toMap());

  factory Restaurant.fromJson(String source) =>
      Restaurant.fromMap(json.decode(source) as Map<String, dynamic>);
}
