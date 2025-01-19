import 'package:equatable/equatable.dart';

class CategoriesModel extends Equatable {
  const CategoriesModel({
    required this.id,
    required this.nameCategory,
    required this.picture,
    required this.createdAt,
    required this.updatedAt,
    required this.storages,
  });

  final int id;
  final String nameCategory;
  final String picture;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<Storage> storages;

  CategoriesModel copyWith({
    int? id,
    String? nameCategory,
    String? picture,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Storage>? storages,
  }) {
    return CategoriesModel(
      id: id ?? this.id,
      nameCategory: nameCategory ?? this.nameCategory,
      picture: picture ?? this.picture,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      storages: storages ?? this.storages,
    );
  }

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json["id"] ?? 0,
      nameCategory: json["name_category"] ?? "",
      picture: json["picture"] ?? "",
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      storages: json["storages"] == null
          ? []
          : List<Storage>.from(
              json["storages"]!.map((x) => Storage.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_category": nameCategory,
        "picture": picture,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "storages": storages.map((x) => x.toJson()).toList(),
      };

  @override
  List<Object?> get props => [
        id,
        nameCategory,
        picture,
        createdAt,
        updatedAt,
        storages,
      ];
}

class Storage extends Equatable {
  const Storage({
    required this.id,
    required this.name,
    required this.activity,
    required this.activityDate,
    required this.expiryDate,
    required this.quantity,
    required this.storageLocation,
    required this.userId,
    required this.categoryId,
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

  Storage copyWith({
    int? id,
    String? name,
    String? activity,
    DateTime? activityDate,
    DateTime? expiryDate,
    int? quantity,
    String? storageLocation,
    int? userId,
    int? categoryId,
  }) {
    return Storage(
      id: id ?? this.id,
      name: name ?? this.name,
      activity: activity ?? this.activity,
      activityDate: activityDate ?? this.activityDate,
      expiryDate: expiryDate ?? this.expiryDate,
      quantity: quantity ?? this.quantity,
      storageLocation: storageLocation ?? this.storageLocation,
      userId: userId ?? this.userId,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  factory Storage.fromJson(Map<String, dynamic> json) {
    return Storage(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      activity: json["activity"] ?? "",
      activityDate: DateTime.tryParse(json["activityDate"] ?? ""),
      expiryDate: DateTime.tryParse(json["expiryDate"] ?? ""),
      quantity: json["quantity"] ?? 0,
      storageLocation: json["storageLocation"] ?? "",
      userId: json["userId"] ?? 0,
      categoryId: json["categoryId"] ?? 0,
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
      };

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
      ];
}
