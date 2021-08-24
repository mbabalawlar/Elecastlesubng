import 'package:flutter/material.dart';
import 'billpayment.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BillCompany extends StatefulWidget {
  @override
  _BillCompanyState createState() => _BillCompanyState();
}

class _BillCompanyState extends State<BillCompany> {
  SharedPreferences sharedPreferences;
  bool _isLoading = false;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Select Disko ",
            style: TextStyle(color: Colors.white, fontSize: 17.0)),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        elevation: 0.0,
      ),
      body: ModalProgressHUD(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
          SizedBox(height: 20.0),
          Expanded(
              child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/abuja.jpg", id: 13)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/abuja.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Abuja Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ElectPayment(image: "assets/eko.jpg", id: 2)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/eko.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Eko Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/ikeja.jpg", id: 1)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/ikeja.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Ikeja Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/enugu.jpeg", id: 9)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/enugu.jpeg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Enugu Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/jos.jpeg", id: 14)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/jos.jpeg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Jos Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ElectPayment(image: "assets/kano.png", id: 4)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/kano.png"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Kano Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/kaduna.jpg", id: 16)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/kaduna.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Kaduna Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/ibadan.png", id: 7)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/ibadan.png"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Ibadan Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/benin.jpeg", id: 11)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/benin.jpeg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Benin Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/yola.jpg", id: 12)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/yola.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Yola Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ElectPayment(
                                image: "assets/porthacout.jpg", id: 5)));
                  },
                  child: Material(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/porthacout.jpg"),
                            radius: 35.0,
                          ),
                          SizedBox(height: 4.0),
                          Text("Porthacout Electricity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10.0)),
                        ],
                      ),
                      elevation: 50,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ]))
        ]),
        inAsyncCall: _isLoading,
      ),
    );
  }
}
