import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: double.infinity,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
            padding: EdgeInsets.all(2),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 100, 79, 138),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            )));
  }
}
