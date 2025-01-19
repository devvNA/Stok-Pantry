import 'package:equatable/equatable.dart';

class StoragesModel extends Equatable {
  const StoragesModel({
    required this.id,
    required this.name,
    required this.activity,
    required this.activityDate,
    required this.expiryDate,
    required this.quantity,
    required this.storageLocation,
    required this.userId,
    required this.categoryId,
    required this.category,
  });

  final int id;
  final String name;
  final String activity;
  final DateTime? activityDate;
  final DateTime? expiryDate;
  final int quantity;
  final String storageLocation;
  final int userId;
  final int categoryId;
  final Category? category;

  StoragesModel copyWith({
    int? id,
    String? name,
    String? activity,
    DateTime? activityDate,
    DateTime? expiryDate,
    int? quantity,
    String? storageLocation,
    int? userId,
    int? categoryId,
    Category? category,
  }) {
    return StoragesModel(
      id: id ?? this.id,
      name: name ?? this.name,
      activity: activity ?? this.activity,
      activityDate: activityDate ?? this.activityDate,
      expiryDate: expiryDate ?? this.expiryDate,
      quantity: quantity ?? this.quantity,
      storageLocation: storageLocation ?? this.storageLocation,
      userId: userId ?? this.userId,
      categoryId: categoryId ?? this.categoryId,
      category: category ?? this.category,
    );
  }

  factory StoragesModel.fromJson(Map<String, dynamic> json) {
    return StoragesModel(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      activity: json["activity"] ?? "",
      activityDate: DateTime.tryParse(json["activityDate"] ?? ""),
      expiryDate: DateTime.tryParse(json["expiryDate"] ?? ""),
      quantity: json["quantity"] ?? 0,
      storageLocation: json["storageLocation"] ?? "",
      userId: json["userId"] ?? 0,
      categoryId: json["categoryId"] ?? 0,
      category:
          json["category"] == null ? null : Category.fromJson(json["category"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "activity": activity,
        "activityDate": activityDate?.toIso8601String(),
        "expiryDate": expiryDate?.toIso8601String(),
        "quantity": quantity,
        "storageLocation": storageLocation,
        "userId": userId,
        "categoryId": categoryId,
        "category": category?.toJson(),
      };

  @override
  String toString() {
    return "$id, $name, $activity, $activityDate, $expiryDate, $quantity, $storageLocation, $userId, $categoryId, $category, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        activity,
        activityDate,
        expiryDate,
        quantity,
        storageLocation,
        userId,
        categoryId,
        category,
      ];
}

class Category extends Equatable {
  const Category({
    required this.id,
    required this.nameCategory,
    required this.picture,
  });

  final int id;
  final String nameCategory;
  final String picture;

  Category copyWith({
    int? id,
    String? nameCategory,
    String? picture,
  }) {
    return Category(
      id: id ?? this.id,
      nameCategory: nameCategory ?? this.nameCategory,
      picture: picture ?? this.picture,
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"] ?? 0,
      nameCategory: json["name_category"] ?? "",
      picture: json["picture"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_category": nameCategory,
        "picture": picture,
      };

  @override
  String toString() {
    return "$id, $nameCategory, $picture, ";
  }

  @override
  List<Object?> get props => [
        id,
        nameCategory,
        picture,
      ];
}
