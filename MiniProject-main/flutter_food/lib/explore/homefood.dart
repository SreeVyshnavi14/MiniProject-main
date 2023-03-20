import 'package:flutter/material.dart';
import 'package:flutter_food/explore/search.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class HomeFood extends StatelessWidget {
  const HomeFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade50,
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.deepPurple),
                        icon: Icon(
                          Icons.search,
                          color: Colors.deepPurple,
                        )),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                  child: MdText(
                    text: "Home Restaurents",
                    weight: FontWeight.w500,
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            child: (Container(
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/home/popular/${index + 1}.jpg"))),
                            )),
                          ),
                          Positioned(
                            bottom: -8,
                            child: Container(
                              height: 80,
                              width: 160,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepPurple.shade100),
                              child: Text(" "),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
