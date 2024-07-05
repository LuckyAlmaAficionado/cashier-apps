import 'package:cashier_app/app/modules/main_menu/views/main_menu_view.dart';
import 'package:cashier_app/app/utils/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/products/views/products_view.dart';
import '../modules/transaction/views/transaction_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: 210,
                width: constraints.maxWidth,
                color: Colors.deepOrange,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://cdn.icon-icons.com/icons2/2468/PNG/512/user_icon_149329.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: constraints.maxWidth * 0.8,
                        child: Text(
                          'Lucky Alma Aficionado Rigel',
                          textAlign: TextAlign.center,
                          style: normalTextStyle.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                tileColor: Colors.white,
                onTap: () => Get.to(() => MainMenuView()),
                title: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: normalTextStyle.copyWith(fontSize: 12),
                      'Dashboard',
                    ),
                  ],
                ),
              ),
              ListTile(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                tileColor: Colors.white,
                onTap: () => Get.to(() => ProductsView()),
                title: Row(
                  children: [
                    Icon(
                      Icons.view_in_ar_rounded,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: normalTextStyle.copyWith(fontSize: 12),
                      'Manajemen Produk',
                    ),
                  ],
                ),
              ),
              ListTile(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                onTap: () => Get.to(() => TransactionView()),
                tileColor: Colors.white,
                title: Row(
                  children: [
                    Icon(
                      Icons.receipt_long_outlined,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: normalTextStyle.copyWith(fontSize: 12),
                      'Riwayat Transaksi',
                    ),
                  ],
                ),
              ),
              ListTile(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                tileColor: Colors.white,
                title: Row(
                  children: [
                    Icon(
                      Icons.people_outline,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: normalTextStyle.copyWith(fontSize: 12),
                      'Manajemen Pelanggan',
                    ),
                  ],
                ),
              ),
              ListTile(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                tileColor: Colors.white,
                title: Row(
                  children: [
                    Icon(
                      Icons.security_rounded,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: normalTextStyle.copyWith(fontSize: 12),
                      'Keamanan dan Backup Data',
                    ),
                  ],
                ),
              ),
              ListTile(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                tileColor: Colors.white,
                title: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: normalTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.red,
                      ),
                      'Logout',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
