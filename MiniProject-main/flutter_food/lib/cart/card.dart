import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class CartCard extends StatelessWidget {
  final url;
  final name;
  final price;
  final quantity;
  const CartCard(
      {Key? key,
      required this.name,
      required this.url,
      required this.price,
      required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.only(right: 14),
            height: 80,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(url))),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MdText(
                          text: name,
                          color: Colors.black,
                          size: 22,
                        ),
                        Row(
                          children: [
                            MdText(text: "quantity:$quantity", size: 14),
                            const SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  MdText(text: "\$ $price")
                ])),
      ],
    );
  }
}
