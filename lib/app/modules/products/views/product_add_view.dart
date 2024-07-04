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

  TextEditingController kategoriC = TextEditingController();
  TextEditingController addKategoriC = TextEditingController();
  TextEditingController namaC = TextEditingController();
  TextEditingController hargaC = TextEditingController();
  TextEditingController jumlahC = TextEditingController();

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
            const SizedBox(height: 25),
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
            const SizedBox(height: 25),
            TextField(
              controller: namaC,
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
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            TextField(
              controller: hargaC,
              style: normalTextStyle.copyWith(fontSize: 14),
              keyboardType: TextInputType.number,
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
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            TextField(
              controller: kategoriC,
              onTap: () {
                Get.defaultDialog(
                  radius: 10,
                  title: 'Tambah Kategori',
                  titleStyle: normalTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  titlePadding: const EdgeInsets.symmetric(vertical: 10),
                  contentPadding: const EdgeInsets.all(0),
                  content: Column(
                    children: [
                      Divider(
                        thickness: 0.7,
                        height: 0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 200, // Set a fixed height for the list
                        width: Get.width,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(0),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () async {
                                if (index == 0) {
                                  Get.back();
                                  await AddKategori();
                                } else {
                                  setState(() {
                                    kategoriC.text = 'Makanan $index';
                                    Get.back();
                                  });
                                }
                              },
                              title: Text(
                                '${index == 0 ? 'Tambah Kategori' : 'Makanan $index'}',
                                style: normalTextStyle,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            TextField(
              controller: jumlahC,
              style: normalTextStyle.copyWith(fontSize: 14),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
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
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: Get.width,
              height: 40,
              child: ElevatedButton(
                onPressed: (namaC.text.isEmpty ||
                        hargaC.text.isEmpty ||
                        jumlahC.text.isEmpty ||
                        kategoriC.text.isEmpty)
                    ? null
                    : () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save_outlined),
                    const SizedBox(width: 5),
                    Text(
                      'Simpan',
                      style: normalTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: Get.width,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete_outline),
                    const SizedBox(width: 5),
                    Text(
                      'Hapus Produk',
                      style: normalTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> AddKategori() {
    return Get.defaultDialog(
      title: '',
      radius: 10,
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.all(0),
      content: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            TextField(
              controller: addKategoriC,
              style: normalTextStyle.copyWith(fontSize: 14),
              decoration: InputDecoration(
                label: Text(
                  'Jenis Kategori',
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
            ElevatedButton(
              onPressed: () {
                kategoriC.text = addKategoriC.text;
                Get.back();
              },
              child: Text(
                'Simpan Kategori',
                style: normalTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
