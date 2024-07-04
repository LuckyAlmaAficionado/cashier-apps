import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  late TabController tabController;
}
