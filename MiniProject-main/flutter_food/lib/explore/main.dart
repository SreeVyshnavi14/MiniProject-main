import 'package:flutter/cupertino.dart';
import 'package:flutter_food/explore/homefood.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(child: HomeFood()));
  }
}
