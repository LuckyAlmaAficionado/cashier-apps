import 'package:cashier_app/app/utils/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

class ProductAddView extends StatefulWidget {
  const ProductAddView({Key? key}) : super(key: key);

  @override
  State<ProductAddView> createState() => _ProductAddViewState();
}

class _ProductAddViewState extends State<ProductAddView> {
  String title = 'Tambah';

  TextEditingController kategoriC = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (Get.arguments != null) {
      title = Get.arguments as String;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                width: Get.width * 0.3,
                height: Get.width * 0.3,
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
                label: Text(
                  'Nama Produk',
                  style: normalTextStyle.copyWith(
                    color: Colors.grey.shade400,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                label: Text(
                  'Harga Jual',
                  style: normalTextStyle.copyWith(
                    color: Colors.grey.shade400,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: kategoriC,
              onTap: () {
                Get.defaultDialog(
                  title: 'Pilih Kategori',
                  titleStyle: normalTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  content: SizedBox(
                    height: 200, // Set a fixed height for the list
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            setState(() {
                              kategoriC.text = 'Makanan $index';
                              Get.back();
                            });
                          },
                          title: Text('Makanan $index', style: normalTextStyle),
                        );
                      },
                    ),
                  ),
                );
              },
              readOnly: true,
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.grey.shade400,
                ),
                label: Text(
                  'Kategori',
                  style: normalTextStyle.copyWith(
                    color: Colors.grey.shade400,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                label: Text(
                  'Jumlah Produk',
                  style: normalTextStyle.copyWith(
                    color: Colors.grey.shade400,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
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
