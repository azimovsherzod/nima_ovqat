import 'package:nima_ovqat/constans/constans.dart';

import 'constans/imports.dart';

late GetStorage box;
late Dio dio;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Platform.isAndroid
        ? Colors.white60
        : Colors.white, // navigation bar color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons color
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.light, //status bar icons color
  ));
  await GetStorage.init();
  box = GetStorage();
  await initDio();
}

Future<void> initDio() async {
  dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        if (box.read('tokenG') != null)
          'Authorization': 'Bearer ${box.read('tokenG')}',
      },
    ),
  );
}
