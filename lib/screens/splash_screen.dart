import 'package:flutter/material.dart';
import 'dart:async';
import 'package:toast/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:loading_animations/loading_animations.dart';

String mykey;

//import "home_screen.dart";
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  bool _isLoading = false;
  void initState() {
    alert();
    loaddata();
    super.initState();
    Timer(Duration(seconds: 7), () async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
   
      if (sharedPreferences.getBool("first_login") == null) {
        setState(() {
          sharedPreferences.setBool("first_login", true);
        });

        Navigator.of(context).pushReplacementNamed("/onboard");
      } else if (sharedPreferences.getString("token") != null) {
        Navigator.of(context).pushReplacementNamed("/home");
      } else {
        Navigator.of(context).pushReplacementNamed("/login");
      }
    });
  }

  Future<dynamic> loaddata() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    mykey = sharedPreferences.getString("tok");
    print(mykey);
    if (mykey != null) {
      String url = 'https://www.elecastlesubng.com/api/user/';

      Response res = await get(
        url,
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Token $mykey'
        },
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        Map resJson = json.decode(res.body);
        List network =
            resJson["percentage"].map((net) => net["percent"]).toList();
        List topnetwork =
            resJson["topuppercentage"].map((net) => net["percent"]).toList();

        List adminNum =
            resJson["Admin_number"].map((net) => net["phone_number"]).toList();

        List exam = resJson["Exam"].map((net) => net["amount"]).toList();

        sharedPreferences.setDouble("WAEC", exam[0]);
        sharedPreferences.setDouble("NECO", exam[1]);
        print("musa $exam");

        sharedPreferences.setString("username", resJson["user"]["username"]);
        sharedPreferences.setString(
            "walletb", resJson["user"]["wallet_balance"]);
        sharedPreferences.setString("bonusb", resJson["user"]["bonus_balance"]);
        sharedPreferences.setString("email", resJson["user"]["email"]);
        sharedPreferences.setString(
            "notification", resJson["notification"]["message"]);

        sharedPreferences.setString(
            "account", resJson["user"]["reservedaccountNumber"]);
        sharedPreferences.setString(
            "bank", resJson["user"]["reservedbankName"]);
        sharedPreferences.setString("user_type", resJson["user"]["user_type"]);
        sharedPreferences.setString("phone", resJson["user"]["Phone"]);

        sharedPreferences.setString("phone", resJson["user"]["Phone"]);

        sharedPreferences.setInt("PercentageMTN", network[0]);
        sharedPreferences.setInt("PercentageGLO", network[1]);
        sharedPreferences.setInt("PercentageAIRTEL", network[2]);
        sharedPreferences.setInt("Percentage9MOBILE", network[3]);

        sharedPreferences.setInt("TopupPercentageMTN", topnetwork[0]);
        sharedPreferences.setInt("TopupPercentageGLO", topnetwork[1]);
        sharedPreferences.setInt("TopupPercentageAIRTEL", topnetwork[2]);
        sharedPreferences.setInt("TopupPercentage9MOBILE", topnetwork[3]);

        sharedPreferences.setString("AdminNumberMTN", adminNum[0]);
        sharedPreferences.setString("AdminNumberGLO", adminNum[1]);
        sharedPreferences.setString("AdminNumberAIRTEL", adminNum[2]);
        sharedPreferences.setString("AdminNumber9MOBILE", adminNum[3]);
      } else {
        setState(() {
          _isLoading = false;
        });
        Toast.show('Something went wrong, pls try again.', context,
            backgroundColor: Colors.red,
            duration: Toast.LENGTH_SHORT,
            gravity: Toast.CENTER);
      }
    }
  }

  Future<dynamic> alert() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String url = 'https://www.elecastlesubng.com/api/alert/';

    Response res = await get(
      url,
      headers: {
        "Content-Type": "application/json",
      },
    );

    Map resJson = json.decode(res.body);

    if (this.mounted) {
      setState(() {
        pref.setString("alert", resJson["alert"]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E99),
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Center(
          child: Image.asset(
            "images/logo.png",
            width: 300,
          ),
        )
      ]),
    );
  }
}
