import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductSettingView extends GetView {
  const ProductSettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductSettingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductSettingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
