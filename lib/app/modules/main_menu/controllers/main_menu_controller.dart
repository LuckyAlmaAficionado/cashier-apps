import 'package:cashier_app/app/controllers/widget_setting_controller.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final w = Get.put(WidgetSettingController());

  RxInt itemSelected = 0.obs;

  RxList<String> items = <String>[
    'All Menu',
    'Food',
    'Drinks',
    'Snacks',
    'Desserts',
    'Promo',
  ].obs;
}
