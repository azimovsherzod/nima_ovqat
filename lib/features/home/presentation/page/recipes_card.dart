import '../../../../constans/imports.dart';

class RecipesCard extends StatefulWidget {
  const RecipesCard({super.key});

  @override
  _RecipesCardState createState() => _RecipesCardState();
}

class _RecipesCardState extends State<RecipesCard> {
  // late YoutubePlayerController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = YoutubePlayerController(
  //     initialVideoId:
  //         YoutubePlayer.convertUrlToId('https://youtu.be/9OquUp6x5IU')!,
  //     flags: const YoutubePlayerFlags(autoPlay: true, loop: true),
  //   );
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading:
            _buildIconButton(Icons.arrow_back, () => Navigator.pop(context)),
        actions: [_buildIconButton(Icons.bookmark_outline, () {})],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // YoutubePlayer(
            //     controller: _controller,
            //     showVideoProgressIndicator: true,
            //     progressIndicatorColor: Colors.yellow),
            const Gap(16),
            _buildRecipeTitle(),
            const SizedBox(height: 4),
            const Text("Western", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            _buildRecipeDetails(),
            const SizedBox(height: 24),
            _buildSectionTitle("Ingredients"),
            const SizedBox(height: 8),
            _buildIngredients(),
            const SizedBox(height: 8),
            _buildSectionTitle("Directions"),
            const SizedBox(height: 8),
            const Text(
              "In a large mixing bowl, whisk together the flour and milk until smooth. "
              "Then add the eggs and melted butter, mixing until combined. Pour batter "
              "into a hot skillet, cook until golden brown, and enjoy with honey and orange slices.",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.yellow,
      ),
      child: IconButton(
          icon: Icon(icon, color: Colors.black), onPressed: onPressed),
    );
  }

  Widget _buildRecipeDetails() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RecipeDetailItem(icon: Icons.timer, label: "35 mins"),
        RecipeDetailItem(icon: Icons.person, label: "      3 \nServings"),
        RecipeDetailItem(icon: Icons.local_fire_department, label: "103 Cal"),
        RecipeDetailItem(icon: Icons.thumb_up, label: "Easy"),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

Widget _buildRecipeTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "Crepes with Orange and Honey",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          children: [
            Icon(Icons.star, color: Color.fromARGB(255, 0, 0, 0), size: 16),
            Gap(4),
            Text("4.5", style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    ],
  );
}

Widget _buildIngredients() {
  const ingredients = [
    "• 2 Eggs",
    "• 1 Cup All-purpose flour",
    "• 1/2 Cup Whole milk",
    "• 2 Tablespoons Butter",
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: ingredients
        .map((ingredient) =>
            Text(ingredient, style: const TextStyle(color: Colors.white)))
        .toList(),
  );
}
