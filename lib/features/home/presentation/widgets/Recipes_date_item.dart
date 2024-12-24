import '../../../../constans/imports.dart';

class RecipeDetailItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const RecipeDetailItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.yellow),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black, size: 30),
          const Gap(4),
          Text(
            label,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
