import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OnBoardScreenState();
  }
}

class OnBoardScreenState extends State<OnBoardScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: Colors.indigo[900],
        pages: pages,
        skipClicked: (value) {
          Navigator.of(context).pushReplacementNamed("/login");
        },
        getStartedClicked: (value) {
          Navigator.of(context).pushReplacementNamed("/login");
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Welcome to elecastlesubng',
        description:
            'elecastlesubng ,Automated VTU platform and affordable services .',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/welcome.png'),
    SkOnboardingModel(
        title: 'We are Fast',
        description: 'Our Services delivery and wallet funding is automated.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/speed.png'),
    SkOnboardingModel(
        title: 'You are Safe',
        description:
            'Your funds in your wallet can be kept as long as you want and it’s secured.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/security.png'),
    SkOnboardingModel(
        title: 'We are Reliable',
        description: 'With our several years of experience and engineers.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/reliable.png'),
  ];
}
