import 'dart:math';

import 'package:cashier_app/app/utils/shared.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              prefixIcon: Icon(Icons.search),
              hintText: 'Cari No. Transaksi',
              hintStyle: normalTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: List.generate(
              3,
              (index) {
                return Column(
                  children: [
                    Container(
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.grey.shade300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Kamis, 04 Jul 2024', style: normalTextStyle),
                          Text(
                            'Rp60.000',
                            style: normalTextStyle.copyWith(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...List.generate(
                      3 + index,
                      (index) => ListTile(
                        shape: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.receipt_long_outlined,
                            color: Colors.black,
                          ),
                        ),
                        minLeadingWidth: 30,
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rp30.000',
                                    style: normalTextStyle.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text('22:40', style: normalTextStyle)
                                ],
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined)
                            ],
                          ),
                        ),
                        title: Text(
                          '#${index * Random().nextInt(1000)}',
                          style: normalTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Metode Pembayaran',
                          style: normalTextStyle,
                        ),
                      ),
                    ),
                    if (index == 2) ...{
                      const SizedBox(height: 15),
                      Text(
                        'Tidak ada data lagi.',
                        style: normalTextStyle,
                      ),
                      const SizedBox(height: 20),
                    }
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
