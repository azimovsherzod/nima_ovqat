import '../../../../constans/imports.dart';

class CustomSearchContainer extends StatelessWidget {
  final IconData leftIcon;
  final String placeholderText;
  final String rightIconPath;

  const CustomSearchContainer({
    super.key,
    this.leftIcon = Icons.search,
    this.placeholderText = "Search any recipes",
    this.rightIconPath = "assets/icons/vertical.png",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 50, 12, 0),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(90, 60, 60, 67),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: Icon(leftIcon, color: Colors.white),
          ),
          Text(
            placeholderText,
            style: const TextStyle(color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              rightIconPath,
              height: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
