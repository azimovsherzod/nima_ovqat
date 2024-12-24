
import '../../../../constans/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<CategoriesProvider>(context, listen: false).fetchCategories(currentPage: 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<void>(
        future: Provider.of<CategoriesProvider>(context, listen: false).fetchCategories(currentPage: 1),
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }


          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error loading categories: ${snapshot.error}',
                style: const TextStyle(color: Colors.white),
              ),
            );
          }


          return Consumer<CategoriesProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  const CustomSearchContainer(),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: provider.categories.length,
                      itemBuilder: (context, index) {
                        final category = provider.categories[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoriesDetailsWidget(category: category),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CategoryButton(
                              icon: Icons.category,
                              label: category.name, 
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      "New recipes",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Recipes(),  
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
