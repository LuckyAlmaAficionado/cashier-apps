import 'package:cashier_app/app/utils/shared.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductAddView extends StatefulWidget {
  const ProductAddView({Key? key}) : super(key: key);

  @override
  State<ProductAddView> createState() => _ProductAddViewState();
}

class _ProductAddViewState extends State<ProductAddView> {
  String title = 'Tambah';

  @override
  void initState() {
    super.initState();
    if (Get.arguments != null) {
      title = Get.arguments as String;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${title.capitalizeFirst} Produk'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: Get.width * 0.4,
                height: Get.width * 0.4,
                color: Colors.grey,
                child: Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: 'Nama Item (contoh: Barbequeue)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: normalTextStyle.copyWith(fontSize: 14),
              maxLines: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: 'Desc Item (contoh: Barbequeue Sauce)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: 'Harga Item (contoh: 10000)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: 'Jumlah Item (contoh: 5)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: Get.width,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Tambah Item'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
