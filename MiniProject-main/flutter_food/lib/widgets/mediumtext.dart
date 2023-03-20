import 'package:flutter/material.dart';

class MdText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow oveflow;
  FontWeight weight;
  MdText(
      {Key? key,
      required this.text,
      this.color = Colors.deepPurpleAccent,
      this.size = 20,
      this.oveflow = TextOverflow.ellipsis,
      this.weight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        overflow: oveflow,
        fontWeight: weight,
      ),
    ));
  }
}
