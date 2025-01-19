import 'package:get/get.dart';
import 'package:stock_pantry/app/data/models/category/categories_model.dart';

class HomeController extends GetxController {
  final categories = <CategoriesModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getCategory();
  }

  Future<void> getCategory() async {
    isLoading.value = true;
    final category = await CategoryRepository().getCategory();

    // Urutkan kategori berdasarkan updated_at terbaru
    category.sort((a, b) {
      if (b.updatedAt == null) return -1;
      if (a.updatedAt == null) return 1;
      return b.updatedAt!.compareTo(a.updatedAt!);
    });

    categories.value = category;
    isLoading.value = false;
  }

  Future<void> onRefresh() async {
    categories.clear();
    await getCategory();
  }
}
