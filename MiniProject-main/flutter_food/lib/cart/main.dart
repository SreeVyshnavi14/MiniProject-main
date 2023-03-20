import "package:flutter/material.dart";
import 'package:flutter_food/cart/card.dart';
import 'package:flutter_food/data/main.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(color: Colors.deepPurple.shade50, child: itemCard()),
    );
  }

  ListView itemCard() {
    return ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          if (cart.isEmpty) {
            return Container(
              height: 100,
              width: 200,
              color: Colors.black,
              child: Center(child: MdText(text: "Your cart is empty")),
            );
          } else {
            return CartCard(
              name: cart[index]["name"],
              url: cart[index]["url"],
              price: cart[index]["price"],
              quantity: cart[index]["quantity"],
            );
          }
        });
  }
}
