import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:cashier_app/app/controllers/widget_setting_controller.dart';
import 'package:cashier_app/app/modules/products/views/product_add_view.dart';
import 'package:cashier_app/app/utils/drawer.dart';
import 'package:cashier_app/app/utils/shared.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  ProductsView({Key? key}) : super(key: key);
  final w = Get.put(WidgetSettingController());

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    return Scaffold(
      drawer: CustomDrawer(),
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
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(
              () => ProductAddView(),
              arguments: 'edit',
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.network(
                              'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'Menu ${index + 1}',
                                style: normalTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Rp. 19.000',
                                style: normalTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
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
    );
  }
}
