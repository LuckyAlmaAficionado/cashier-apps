import 'dart:developer';

import 'package:cashier_app/app/modules/main_menu/views/main_menu_view.dart';
import 'package:cashier_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    isUserAlreadyLoggedIn();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  isUserAlreadyLoggedIn() async {
    log('isUserAlreadyLoggedIn');
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => MainMenuView());
  }
}
