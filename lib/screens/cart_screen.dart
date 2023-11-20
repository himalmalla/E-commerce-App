import 'dart:ffi';

import 'package:flutter/material.dart';

import '../widgets/card_item_samples.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                        ),
                      ),
                      const Text(
                        "Cart",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.more_horiz,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      CardItemSamples(),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Select All",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Checkbox(
                              activeColor: const Color(0xFFFd725A),
                                value: true,
                                onChanged: (value) {})
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Payment",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            Text(
                              "\$450",
                              style: TextStyle(
                                  color: Color(0xFFFD725A),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Cost",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(
                            "\$50",
                            style: TextStyle(
                                color: Color(0xFFFD725A),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      ),
                      const SizedBox(
                        height:30 ,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 130),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFD725A),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                color: Colors.white.withOpacity(0.9)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
