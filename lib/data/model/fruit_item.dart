import 'nutrition.dart';

class FruitItem {
  final String name;
  final int id;
  final String family;
  final String order;
  final String genus;
  final Nutrition nutritions;

  FruitItem({
    required this.name,
    required this.id,
    required this.family,
    required this.order,
    required this.genus,
    required this.nutritions,
  });

  factory FruitItem.fromJson(Map<String, dynamic> json) {
    return FruitItem(
      name: json['name'],
      id: json['id'],
      family: json['family'],
      order: json['order'],
      genus: json['genus'],
      nutritions: Nutrition.fromJson(json['nutritions']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'family': family,
      'order': order,
      'genus': genus,
      'nutritions': nutritions.toJson(),
    };
  }

  @override
  String toString() {
    return 'FruitItem{name: $name, id: $id, family: $family, order: $order, genus: $genus, nutritions: $nutritions}';
  }
}
