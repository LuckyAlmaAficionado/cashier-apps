import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:cashier_app/app/controllers/widget_setting_controller.dart';
import 'package:cashier_app/app/modules/products/controllers/products_controller.dart';
import 'package:cashier_app/app/utils/shared.dart';

class ProductListSelectedView extends GetView {
  ProductListSelectedView({Key? key}) : super(key: key);

  final controller = Get.put(ProductsController());
  final w = Get.put(WidgetSettingController());
  TextEditingController itemC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Item Selected',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                RxInt item = 0.obs;

                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: Get.width,
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 10,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Items',
                            style: normalTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                width: 25,
                                height: 25,
                                child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '${item.value}',
                                style: normalTextStyle.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                width: 25,
                                height: 25,
                                child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Rp35.000',
                            style: normalTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            width: 25,
                            height: 25,
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
                // return InkWell(
                //   onTap: () {
                //     itemC.text = index.toString();
                //     Get.dialog(
                //       AlertDialog(
                //         title: Text('Item Selected'),
                //         content: TextField(
                //           controller: itemC,
                //           onEditingComplete: () {
                //             itemC.text = '';
                //           },
                //         ),
                //         actions: [
                //           TextButton(
                //             onPressed: () {
                //               Get.back();
                //             },
                //             child: Text('Done'),
                //           ),
                //         ],
                //       ),
                //     );
                //   },
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.all(15.0),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Expanded(
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Icon(Icons.deblur),
                //                 Text('Menu ${index + 1}'),
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // );
              },
            ),
          ),
          Container(
            width: Get.width,
            height: 130,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.grey.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'CASH',
                            style: normalTextStyle.copyWith(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'QR Pay',
                            style: normalTextStyle.copyWith(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Price:',
                          style: normalTextStyle.copyWith(fontSize: 12),
                        ),
                        Text(
                          'Rp.${controller.totalPrice}',
                          style: normalTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.dialog(
                          AlertDialog(
                            title: Text(
                              'Payment Cash',
                              style: normalTextStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            content: SizedBox(
                              height: 150,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.number,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Rp.34000',
                                            style: normalTextStyle,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Rp.50000',
                                            style: normalTextStyle,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: Get.width,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Process',
                                        style: normalTextStyle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lanjutkan Pembayaran',
                            style: normalTextStyle.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
