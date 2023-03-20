import "package:flutter/material.dart";
import 'package:flutter_food/widgets/mediumtext.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      // height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(20),
        // borderRadius: BorderRadius.only(
        //     bottomRight: Radius.circular(20),
        //     bottomLeft: Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  MdText(
                    text: "Vijayawada",
                    size: 16,
                  ),
                  Row(children: [
                    MdText(
                      text: "Nuzvid",
                      color: Colors.black,
                      size: 11,
                    ),
                    const Icon(Icons.arrow_drop_down_outlined)
                  ])
                ],
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              )
            ]),
      ),
    ));
  }
}
