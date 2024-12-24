import '../../../../constans/imports.dart';

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const CategoryButton({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: isSelected ? Colors.yellow : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey.shade800,
            size: 30,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.grey.shade800,
          ),
        ),
      ],
    );
  }
}
