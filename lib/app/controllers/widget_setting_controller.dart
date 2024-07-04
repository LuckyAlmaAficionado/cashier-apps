import 'package:get/get.dart';

class WidgetSettingController extends GetxController {
  RxInt settingValue = 0.obs;

  RxList settings = [
    {'crossAxisCount': 3, 'childAspectRatio': 1 / 1.2},
    {'crossAxisCount': 2, 'childAspectRatio': 1 / 1.5},
  ].obs;
}
