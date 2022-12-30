import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          elevation: _myconfig.myElevation,
          leading: InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/images/back.png",
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "Wishlist",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          child: Column(children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
              height: 120,
              width: 400,
              child: Row(children: [
                Container(
                    height: 120,
                    width: 100,
                    color: Colors.white,
                    child:
                        Image(image: AssetImage("assets/images/samosu.png"))),
                Container(
                  height: 120,
                  width: 200,
                  color: Colors.white,
                  child: Column(children: [
                    Container(
                      color: Colors.white,
                      height: 30,
                      width: 200,
                      child: Text(
                        "Taj Mahal",
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      color: Colors.white,
                      child: Text("Taj Mahal"),
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      color: Colors.white,
                      child: Text("7.00"),
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      color: Colors.white,
                      child: Text("10.00 save 3.00(30.00)%"),
                    )
                  ]),
                ),
                Container(
                    height: 120,
                    width: 60,
                    color: Colors.white,
                    child: Image(image: AssetImage("assets/images/back.png")))
              ]),
            ),
          ]),
        ));
  }
}
