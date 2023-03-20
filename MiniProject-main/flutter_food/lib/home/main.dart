import 'package:flutter/material.dart';
import 'package:flutter_food/home/body.dart';
import 'package:flutter_food/home/head.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [Head(), HomeBody()],
      ),
    );
  }
}
