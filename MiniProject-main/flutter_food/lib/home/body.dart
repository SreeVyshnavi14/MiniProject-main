import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/data/main.dart';
import 'package:flutter_food/home/popular.dart';
import 'package:flutter_food/screens/popularScreen.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  double _currentPage = 0.0;
  PageController pagecontroller = PageController();

  @override
  void initState() {
    super.initState();
    pagecontroller.addListener(() {
      setState(() {
        _currentPage = pagecontroller.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Container(
              height: 250,
              child: PageView.builder(
                  itemCount: 4,
                  controller: pagecontroller,
                  onPageChanged: (index) => setState(() {
                        _currentPage = index.toDouble();
                      }),
                  itemBuilder: (context, index) {
                    return _buildPageItem(index);
                  }),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: DotsIndicator(
                dotsCount: 4,
                position: _currentPage,
                onTap: (position) {
                  setState(() {
                    _currentPage = position;
                    pagecontroller.jumpToPage(position.toInt());
                  });
                },
                decorator: DotsDecorator(
                  activeColor: Colors.deepPurpleAccent,
                  color: Colors.white,
                  size: Size(10, 10),
                  activeSize: Size(20, 10),
                  shapes: [
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ],
                  activeShapes: [
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ],
                ),
              ),
            )
          ]),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 20,
              ),
              MdText(
                text: "Popular Restaurents",
                color: Colors.black,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              MdText(
                text: "in your area",
                size: 10,
                color: Colors.grey.shade700,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Popular()
        ]),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    // setState(() {
    //   i = index.toDouble() + 1;
    // });
    final i = index + 1;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PopularPage(
                    name: names[index]["name"].toString(),
                    rest: names[index]["rest"].toString(),
                    price: names[index]["price"].toString(),
                    description: names[index]["discription"].toString(),
                    url: "assets/images/home/slide/img${i}.jpg")));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.shade100,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage("assets/images/home/slide/img${i}.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
