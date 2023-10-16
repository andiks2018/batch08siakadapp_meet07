import 'package:flutter/material.dart';

import '../../common/constants/images.dart';
import 'auth_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {


    // delay 3 detik untuk masuk ke authpage
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthPage(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //layar splash screen di sini seperti body html
      body: Center(
        child: Image.asset(
          Images.logo,
          width: 150.0,
        ),
      ),
    );
  }
}
