import 'package:datavilla/screens/login.dart';
import 'package:datavilla/screens/signup.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/onboardui.dart';
import 'screens/signup.dart';
import 'screens/login.dart';
import 'screens/pricing.dart';
import 'screens/setting.dart';
import 'history.dart';
import 'cablename.dart';
import 'billcompany.dart';
import 'payment.dart';
import 'airtimefunding.dart';
import 'bankpayment.dart';
import 'airtimenetwork.dart';
import 'datanetwork.dart';
import 'passwordchange.dart';
import 'passwordreset.dart';
import 'withdraw.dart';
import 'Trasnsfer.dart';
import 'bonus.dart';
import 'billreceipt.dart';
import 'walletsummary.dart';
import 'screens/about.dart';
import 'screens/contact.dart';
import 'chatwidget.dart';
import 'Referal.dart';
import 'screens/result_checkerform.dart';
import 'banknotice.dart';
import 'screens/website.dart';
void main() {
  runApp(
    MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/onboard': (context) => OnBoardScreen(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/setting': (context) => Setting(),
        '/bank': (context) => BankPagePayment(),
        '/airtimefundin': (context) => AirtimeFunding(),
        '/paystack': (context) => CheckoutMethodSelectable(),
        '/bill': (context) => BillCompany(),
        '/cablename': (context) => CableName(),
        '/history': (context) => History(),
        '/airtimenet': (context) => AirtimeNet(),
        '/datanet': (context) => DataNet(),
        '/changepassword': (context) => Change(),
        '/ResetPassword': (context) => ResetPassword(),
        '/transfer': (context) => Transfer(),
        '/withdraw': (context) => Withdraw(),
        '/bonus': (context) => Bonus(),
        '/billreceipt': (context) => Billreceipt(),
        '/wallet': (context) => WalletSummary(),
        '/about': (context) => AboutPage(),
        '/contact': (context) => ContactPage(), 
        '/supportchat': (context) => ChatWidget(),
        '/referal': (context) => MyReferal(),
        '/ResultChecker': (context) => ResultChecker(),
        '/banknotice': (context) => BankNotice(),
        '/pricing': (context) => PricingWidget(),
        "/web": (context) => WebsiteWidget()
      },

      
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        accentColor: Colors.indigo[800],
      ),
      debugShowCheckedModeBanner: false,
      title: 'elecastlesubng',
      home: SplashScreen(),
      // routes: <String, WidgetBuilder>{
      //   '/HomeScreen': (BuildContext context) => new HomeScreen()
      // },
    ),
  );
}
