// /* THIS IS BLANK FILE FOR FUTURE USE*/
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterforbeginners2/utils/defaults.dart';
// import 'package:flutterforbeginners2/widgets/mywidget.dart';

// final List<String> imgList = [
//   'assets/images/slider.jpg'
//   // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
//   //'https://www.google.com/search?q=food+images&oq=food&aqs=chrome.3.69i57j0i131i433i512l2j0i512j0i131i433j0i512j46i175i199i512j0i512j0i433i512j0i512.4482j0j7&sourceid=chrome&ie=UTF-8&safe=active&ssui=on#imgrc=4VXFatqPlD5rjM'
//   //'https://www.pexels.com/photo/flat-lay-photography-of-vegetable-salad-on-plate-1640777/'
// ];

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   MyConfig _myconfig = MyConfig();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leadingWidth: 80,
//           elevation: _myconfig.myElevation,
//           leading: InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Image.asset(
//               "assets/images/karmalogo.png",
//               color: Colors.black,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           title: Padding(
//             padding: const EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Home",
//               style:
//                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Column(children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     child: SearchBar(
//                         showSearchIcon: true,
//                         text: 'Search Products',
//                         height: 30,
//                         showFilterIcon: false,
//                         onTap: () {}),
//                   ),
//                   Container(
//                     child: CarouselSlider(
//                       options: CarouselOptions(autoPlay: true),
//                       items: imgList
//                           .map((item) => Center(
//                               child: Image.asset(item,
//                                   fit: BoxFit.cover, width: 1000)))
//                           .toList(),
//                     ),
//                   ),
//                   Container(
//                     child: Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           SizedBox(
//                             height: 20,
//                             width: 20,
//                           ),
//                           Center(
//                             child: Column(
//                               children: [
//                                 Container(
//                                   child: Card(
//                                     color: Colors.amber,
//                                     //margin: EdgeInsets.all(50),
//                                     child: Image.asset(
//                                       'assets/images/catagory1.gif',
//                                       height: 140.0,
//                                       width: 140.0,
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   child: Text("On Sale"),
//                                 )
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                             width: 20,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 child: Card(
//                                   color: Colors.amber,
//                                   //margin: EdgeInsets.all(50),
//                                   child: Image(
//                                     image: AssetImage(
//                                         "assets/images/catagory2.png"),
//                                     height: 140.0,
//                                     width: 140.0,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 child: Text("Starter"),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ]),
//                   ),
//                   Container(
//                     child: Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           SizedBox(
//                             height: 20,
//                             width: 20,
//                           ),
//                           Center(
//                             child: Column(
//                               children: [
//                                 Container(
//                                   child: Card(
//                                     color: Colors.amber,
//                                     //margin: EdgeInsets.all(50),
//                                     child: Image(
//                                       image:
//                                           AssetImage("assets/images/veg.png"),
//                                       height: 140.0,
//                                       width: 140.0,
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   child: Text("beverages"),
//                                 )
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                             width: 20,
//                           ),
//                           Column(
//                             children: [
//                               Container(
//                                 child: Card(
//                                   color: Colors.amber,
//                                   //margin: EdgeInsets.all(50),
//                                   child: Image(
//                                     image: AssetImage("assets/images/veg.png"),
//                                     height: 140.0,
//                                     width: 140.0,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 child: Text("wines"),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ]),
//                   )
//                 ]),
//               ],
//             ),
//           ),
//         ));
//   }
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/blank.dart';
import 'package:flutterforbeginners2/screens/cartscreen.dart';
import 'package:flutterforbeginners2/screens/profilescreen.dart';
import 'package:flutterforbeginners2/screens/wishlistscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';
//import 'package:google_fonts/google_fonts.dart';

final List<String> imgList = ['assets/images/slider.jpg'];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  TextEditingController searchproduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/karmalogo.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Center(
            child: Text(
              "karma louge",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.arrow_drop_down_circle,
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: _myconfig.myHeight,
                ),
                Center(
                  child: MyInputField(
                      keyboardtype: TextInputType.text,
                      hinttext: "search product",
                      // validator: (value) {
                      //   _myconfig.nameValidator(value: value);
                      // },
                      hidedata: false,
                      mycontroller: searchproduct,
                      myicon: Icon(
                        Icons.search,
                        color: _myconfig.myButtonbackgroundColor,
                        size: _myconfig.myIconSize,
                      )),
                ),
                SizedBox(
                  height: _myconfig.myHeight,
                ),
                Container(
                    height: 300,
                    width: double.infinity,
                    child: CarouselSlider(
                      options: CarouselOptions(autoPlay: true),
                      items: imgList
                          .map((item) => Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000)))
                          .toList(),
                    )),
                SizedBox(
                  height: _myconfig.myHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: _myconfig.myHeight,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 5.0),
                              ],
                            ),
                            child: Image(
                              image: AssetImage("assets/images/catagory1.gif"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              "on sale!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text(
                              "on sale!",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ]),
                    SizedBox(
                      width: _myconfig.myWidth * 2,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 10.0),
                              ],
                            ),
                            child: Image(
                              image: AssetImage("assets/images/catagory2.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              "starters",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text(
                              "samosa,panner,paboda..",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ]),
                  ],
                ),
                SizedBox(
                  height: _myconfig.myHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: _myconfig.myHeight,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 10.0),
                              ],
                            ),
                            child: Image(
                              height: 150,
                              width: 150,
                              image: AssetImage("assets/images/veg.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Beverages",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text(
                              "lassi tea loe tea",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ]),
                    SizedBox(
                      width: _myconfig.myWidth * 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(blurRadius: 10.0),
                            ],
                          ),
                          child: Image(
                            image: AssetImage("assets/images/catagory4.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Wine",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Container(
                          child: Text(
                            "wine",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: _myconfig.myHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: _myconfig.myHeight,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 10.0),
                              ],
                            ),
                            child: Image(
                              image: AssetImage("assets/images/catagory5.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              "juices",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text(
                              "mango paineple apple",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ]),
                    SizedBox(
                      width: _myconfig.myWidth * 2,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 10.0),
                              ],
                            ),
                            child: Image(
                              image: AssetImage("assets/images/catagory6.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              "indian food",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text(
                              "parotha,dosa, idali",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
