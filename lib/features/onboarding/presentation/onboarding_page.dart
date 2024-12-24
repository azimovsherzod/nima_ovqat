import '../../../constans/imports.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(0),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(LocalImages.logo),
              ),
              const Gap(20),
              Text(
                'Nima ovqat'.tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(16),
              Text(
                'Taom tanlash — biz bilan oson!'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
        child: AppButton(
            itemsAlignment: MainAxisAlignment.center,
            color: Colors.yellow[700],
            text: 'Get Started'.tr,
            textcolor: Colors.black,
            textStyle: const TextStyle(fontSize: 17),
            icon: const Icon(Icons.arrow_forward, size: 20),
            onTap: () {
              Get.offAllNamed(Routes.home);
            }),
      ),
    );
  }
}
