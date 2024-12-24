

import 'constans/imports.dart';

class NimaOvqatApp extends StatelessWidget {
  const NimaOvqatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvader()),
        ChangeNotifierProvider(create: (_) => CategoriesProvider()),
        // ChangeNotifierProvider(create: (_) => HomeProvider()),
        // ChangeNotifierProvider(create: (_) => GroupProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nima ovqat',
        // theme: AppTheme.lightTheme,
        initialRoute: Routes.splash,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        navigatorKey: rootNavigatorKey,
      ),
    );
  }
}
