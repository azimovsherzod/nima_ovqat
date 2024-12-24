import '../../../../constans/imports.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Wrap(
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          _buildRecipeCard(context, "assets/images/food2.jpg", "Chicken Curry",
              "Asian", "15 mins", "4.8"),
          _buildRecipeCard(context, "assets/images/food3.jpg",
              "Crepes with Orange", "Western", "35 mins", "4.5"),
          _buildRecipeCard(context, "assets/images/food4.jpg",
              "Spaghetti Carbonara", "Italian", "20 mins", "4.6"),
          _buildRecipeCard(context, "assets/images/food5.jpg", "Sushi",
              "Japanese", "45 mins", "4.9"),
          _buildRecipeCard(context, "assets/images/food5.jpg", "Sushi",
              "Japanese", "45 mins", "4.9"),
          _buildRecipeCard(context, "assets/images/food5.jpg", "Sushi",
              "Japanese", "45 mins", "4.9"),
          _buildRecipeCard(context, "assets/images/food5.jpg", "Sushi",
              "Japanese", "45 mins", "4.9"),
          _buildRecipeCard(context, "assets/images/food5.jpg", "Sushi",
              "Japanese", "45 mins", "4.9"),
          _buildRecipeCard(context, "assets/images/food5.jpg", "Sushi",
              "Japanese", "45 mins", "4.9"),
        ],
      ),
    );
  }

  Widget _buildRecipeCard(BuildContext context, String imagePath, String title,
      String cuisine, String time, String rating) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.recipesCard);
      },
      child: SizedBox(
        width: (MediaQuery.of(context).size.width / 2) - 32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 150,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.timelapse,
                            color: Colors.white, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          time,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.yellow,
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.black, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          rating,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              cuisine,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
