import '../../../constans/imports.dart';

class CategoriesProvider extends ChangeNotifier {
  bool isLastPage = false; 
  bool isLoading = false; 
  List<CategoryModel> categories = [];

  Future<void> fetchCategories({required int currentPage}) async {
    if (isLoading || isLastPage) return; 

    try {
      isLoading = true;
      notifyListeners();

      final response = await ApiService().makeGetRequest(
        '/recipe_category',
        queryParameters: {'page': currentPage},
      );

      if (currentPage == 0) {
        categories.clear(); 
        isLastPage = false;
      }

      if (response.isNotEmpty) {
        final newCategories = List<CategoryModel>.from(
          response.map((x) => CategoryModel.fromJson(x)),
        );

        categories.addAll(newCategories);

        if (newCategories.length < 10) { 
          isLastPage = true;
        }
      } else {
        isLastPage = true; 
      }
    } catch (e) {
      debugPrint('fetchCategories() $e');
      Get.snackbar(
        "Error".tr,
        e.toString(),
        backgroundColor: Colors.red,
      );
    } finally {
      isLoading = false;
      notifyListeners(); 
    }
  }
}
