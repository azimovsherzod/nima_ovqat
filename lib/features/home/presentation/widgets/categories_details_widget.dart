
import '../../../../constans/imports.dart';

class CategoriesDetailsWidget extends StatelessWidget {
  final CategoryModel category;

  const CategoriesDetailsWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name), // Assuming `CategoryModel` has `name` field
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Details for ${category.name}', // Replace with actual data representation
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
