import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/screens/registerscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

final countrycode = "+91";

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  String devicetokenid = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            child: Image(image: AssetImage("assets/images/registerbg.png")),
          ),
          //SizedBox(

          //),

          Container(
            child: MyInputField(
                keyboardtype: TextInputType.number,
                myicon: Icon(
                  Icons.phone_in_talk_rounded,
                  color: Colors.amber,
                ),
                mycontroller: cellphoneControler,
                hidedata: false,
                hinttext: 'Phonenumber'),
          ),
          SizedBox(
            height: 20,
          ),
          MyButton(
              btnwidth: 300,
              btntextsize: 14,
              buttontext: 'Send OTP',
              textcolor: Colors.black,
              onTap: () {},
              bgcolor: Colors.amber),

          SizedBox(
            height: 20,
          ),
          MyButton(
              btnwidth: 300,
              btntextsize: 14,
              buttontext: 'CONTINUE WITHOUT LOGIN',
              textcolor: Colors.black,
              onTap: () {},
              bgcolor: Colors.amber),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              child: Text("by signing,you agree to our Terms and Condition"),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 28),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RegisterScreen()));
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(20)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
