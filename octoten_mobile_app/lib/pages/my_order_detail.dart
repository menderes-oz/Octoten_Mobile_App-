import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

import '../model/constants.dart';

class MyOrderDetail extends StatefulWidget {
  const MyOrderDetail({Key? key}) : super(key: key);

  @override
  _MyOrderDetailState createState() => _MyOrderDetailState();
}

class _MyOrderDetailState extends State<MyOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "My Order Detail"),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.02),
          horizontal: context.dynamicWidth(0.03),
        ),
        children: [
          Column(
            children: [
              buildPaddingCard(context),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                  thickness: 1,
                ),
              ),
              buildPaddingCameraAndText(context),
              buildPaddingButtons(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                  thickness: 1,
                ),
              ),
              buildPaddingVaccum(context),
              buildPaddingButtons2(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Divider(
                  thickness: 1,
                ),
              ),
              textdeliveryaddress(),
              textbenyeder(),
              textbillingaddres(),
              textbenyeder(),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              buildAlignPayment(),
              buildAlignNumberCard(),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              buildAlignTable(),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              buildAlignCargoTracking(),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildAlignFeedex(),
            ],
          ),
        ],
      ),
    );
  }

  Align buildAlignFeedex() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Feedex\n"
          "#FX121725112",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: 'Poppins-Regular.ttf',
          ),
        ),
      ),
    );
  }

  Align buildAlignCargoTracking() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Cargo Tracking",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins-SemiBold.ttf',
          ),
        ),
      ),
    );
  }

  Align buildAlignTable() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 0, top: 10, bottom: 15),
        child: Table(
          defaultColumnWidth: const FixedColumnWidth(120.0),
          border: TableBorder.all(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: 1,
          ),
          children: [
            TableRow(children: [
              Column(children: []),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Payment Amount',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Total Amount',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
            ]),
            TableRow(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$1000',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$3000',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-SemiBold.ttf',
                    ),
                  ),
                )
              ]),
            ]),
            TableRow(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$500',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$3000',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-SemiBold.ttf',
                    ),
                  ),
                )
              ]),
            ]),
            TableRow(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '9',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$250',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular.ttf',
                    ),
                  ),
                )
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '\$3000',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins-SemiBold.ttf',
                    ),
                  ),
                )
              ]),
            ]),
            TableRow(
              children: [
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '12',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: 'Poppins-Regular.ttf',
                      ),
                    ),
                  )
                ]),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '\$125',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: 'Poppins-Regular.ttf',
                      ),
                    ),
                  )
                ]),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '\$3000',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: 'Poppins-SemiBold.ttf',
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Align buildAlignNumberCard() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "5406 **** **** 3333\n"
          "Garanti Bankası - Bonus",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: 'Poppins-Regular.ttf',
            color: Color(0xFF232F3E),
          ),
        ),
      ),
    );
  }

  Align buildAlignPayment() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Payment ınformation",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins-SemiBold.ttf',
            color: Color(0xFF232F3E),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 35,
                width: 170,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFFFEBD5),
                  child: Builder(builder: (context) {
                    return const Text(
                      "Order No: 15261872",
                      style: kYellowBold,
                    );
                  }),
                ),
              ),
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text("Order Completed", style: kRedBold),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.dynamicHeight(0.06),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Delivery Adress",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-SemiBold',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFAD61A),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Total Price",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text(
                      "\$2050",
                      style: kBlackBold,
                    ),
                  ],
                ),
              ),
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Order Date",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text(
                      "12 Feb 2021",
                      style: kYellowBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingCameraAndText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 78,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/kamera1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.1),
          ),
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return const Text("Canon Camera", style: kBlackNormal);
                }),
                SizedBox(
                  height: context.dynamicHeight(0.010),
                ),
                Row(
                  children: [
                    const Text("\$200", style: kBlackBold),
                    SizedBox(
                      width: context.dynamicWidth(0.03),
                    ),
                    const Text(
                      "(5 ıtem)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins-Regular',
                        color: Color(0xFF9496A4),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35,
            width: 150,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins-Bold',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 35,
            width: 150,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Return",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins-Bold',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingVaccum(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 78,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/vacuum.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.1),
          ),
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return const Text("Vacuum Cleaner", style: kBlackNormal);
                }),
                SizedBox(
                  height: context.dynamicHeight(0.010),
                ),
                Row(
                  children: [
                    const Text("\$500", style: kBlackBold),
                    SizedBox(
                      width: context.dynamicWidth(0.03),
                    ),
                    const Text(
                      "(2 ıtem)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins-Regular',
                        color: Color(0xFF9496A4),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingButtons2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35,
            width: 150,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins-Bold',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 35,
            width: 150,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Return",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins-Bold',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Align textdeliveryaddress() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Delivery Address",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins-SemiBold',
            color: Color(0xFF232F3E),
          ),
        ),
      ),
    );
  }

  Align textbenyeder() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Ben Yeder\n"
          "0 532 202 40 59\n"
          "Avrupa Konutları TEM Sitesi."
          "Blok 87 Kat 12 Daire 12\n"
          "Gaziosmanpaşa / İstanbul",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontFamily: 'Poppins-Regular',
            color: Color(0xFF232F3E),
          ),
        ),
      ),
    );
  }

  Align textbillingaddres() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Billing Address",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins-SemiBold',
            color: Color(0xFF232F3E),
          ),
        ),
      ),
    );
  }
}
