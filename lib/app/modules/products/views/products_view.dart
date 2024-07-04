import 'package:cashier_app/app/modules/main_menu/views/main_menu_view.dart';
import 'package:cashier_app/app/modules/products/views/product_add_view.dart';
import 'package:cashier_app/app/utils/shared.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:cashier_app/app/controllers/widget_setting_controller.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  ProductsView({Key? key}) : super(key: key);
  final w = Get.put(WidgetSettingController());

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: SizedBox(
          height: 35,
          width: Get.width * 0.8,
          child: TextField(
            style: normalTextStyle.copyWith(fontSize: 14),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
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
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => ProductAddView());
            },
            icon: Icon(Icons.addchart_rounded, size: 20),
          ),
        ],
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: w.settings[w.settingValue.value]['crossAxisCount'],
          childAspectRatio: w.settings[w.settingValue.value]
              ['childAspectRatio'],
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.dialog(AlertDialog(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                content: Container(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => ProductAddView(), arguments: 'edit');
                          },
                          child: Text(
                            'Edit',
                            style: normalTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () async {
                            Get.back();
                            await Get.dialog(
                              AlertDialog(
                                title: Text(
                                  'Hapus',
                                  style: normalTextStyle,
                                ),
                                content: Text(
                                  'Apakah anda yakin ingin menghapus?',
                                  style: normalTextStyle,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      'Batal',
                                      style: normalTextStyle.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text('Ya'),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Text(
                            'Hapus',
                            style: normalTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
            },
            child: Card(
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
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Rp. 19.000',
                            style: normalTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
