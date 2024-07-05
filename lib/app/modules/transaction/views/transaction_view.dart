import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:cashier_app/app/modules/transaction/views/transaction_debt.dart';
import 'package:cashier_app/app/modules/transaction/views/transaction_history.dart';
import 'package:cashier_app/app/utils/drawer.dart';
import 'package:cashier_app/app/utils/shared.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(TransactionController());
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text(
          'Riwayat Transaksi',
          style: normalTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          Material(
            color: Colors.white,
            child: TabBar(
              controller: controller.tabController,
              labelColor: Colors.deepOrange,
              indicatorColor: Colors.deepOrange,
              unselectedLabelColor: Colors.black,
              labelStyle: normalTextStyle,
              tabs: [
                Tab(child: Text('Transaksi')),
                Tab(child: Text('Kasbon')),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                TransactionHistory(),
                TransactionDebt(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
