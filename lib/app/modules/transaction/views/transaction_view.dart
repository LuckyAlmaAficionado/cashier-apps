import 'package:cashier_app/app/utils/shared.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Riwayat Transaksi',
            style: normalTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          centerTitle: true,
          titleSpacing: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    shape: UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.3),
                    ),
                    title: Text(
                      'Google',
                      style: normalTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      '12 Maret 2024 - 08.00',
                      style: normalTextStyle.copyWith(fontSize: 11),
                    ),
                    trailing: Text(
                      '+Rp7.922',
                      style: normalTextStyle.copyWith(fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
