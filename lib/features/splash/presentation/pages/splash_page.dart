
import 'package:nima_ovqat/constans/imports.dart';
import 'package:nima_ovqat/features/splash/logic/splash_function.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await splashFunctions(context);
    });
    return Scaffold(
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(LocalImages.logo, width: Get.width * 0.5),
              const Gap(10),
              const CircularProgressIndicator(),
            ],
          )),
    );
  }
}
