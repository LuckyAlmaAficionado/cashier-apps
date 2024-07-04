import 'package:cashier_app/app/utils/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:cashier_app/app/modules/products/views/product_list_selected_view.dart';
import 'package:cashier_app/app/utils/shared.dart';

import '../controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(MainMenuController());
    return Scaffold(
      drawer: CustomDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              controller.w.settingValue(0);
            },
            icon: Icon(
              Icons.qr_code_scanner,
              size: 20,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              controller.w.settingValue(1);
            },
            icon: Icon(
              Icons.receipt_long_outlined,
              size: 20,
            ),
          ),
          const SizedBox(width: 10),
        ],
        title: SizedBox(
          height: 35,
          child: TextField(
            style: normalTextStyle,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size: 20),
              fillColor: Colors.grey.shade100,
              hintText: 'Cari produk...',
              hintStyle: normalTextStyle.copyWith(fontSize: 12),
              contentPadding: const EdgeInsets.all(0),
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: Get.width,
              height: 40,
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: controller.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Obx(
                    () => GestureDetector(
                      onTap: () => controller.itemSelected(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        width: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: (index != controller.itemSelected.value)
                              ? Colors.grey.shade100
                              : Colors.green.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '${controller.items[index]}',
                            style: normalTextStyle.copyWith(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Obx(
                () => GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        controller.w.settings[controller.w.settingValue.value]
                            ['crossAxisCount'],
                    childAspectRatio:
                        controller.w.settings[controller.w.settingValue.value]
                            ['childAspectRatio'],
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: Icon(Icons.deblur)),
                                  Text(
                                    'Menu ${index + 1}',
                                    style: normalTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Rp. 19.000',
                                    style: normalTextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: Get.width,
              height: 80,
              color: Colors.grey.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Pesanan',
                        style: normalTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '1',
                        style: normalTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => ProductListSelectedView());
                    },
                    child: Text(
                      'proses pesanan',
                      style: normalTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
