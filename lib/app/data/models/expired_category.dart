import 'package:stock_pantry/app/data/models/category/categories_model.dart';

class ExpiredCategory {
  final String categoryName;
  final List<Storage> data;
  final String imageUrl;

  ExpiredCategory({
    required this.categoryName,
    required this.data,
    required this.imageUrl,
  });

  Map<String, dynamic> toJson() => {
        "category_name": categoryName,
        "data": data.map((x) => x.toJson()).toList(),
        "image_url": imageUrl,
      };
}

class LowStockCategory {
  final String categoryName;
  final int lowStockCount;
  final List<Storage> data;
  final String imageUrl;

  LowStockCategory({
    required this.categoryName,
    required this.lowStockCount,
    required this.data,
    required this.imageUrl,
  });

  Map<String, dynamic> toJson() => {
        "category_name": categoryName,
        "low_stock_count": lowStockCount,
        "data": data.map((x) => x.toJson()).toList(),
        "image_url": imageUrl,
      };
}
