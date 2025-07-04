import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg_splash.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: SvgPicture.asset('assets/svg/ic_logo.svg'),
          )
        ],
      ),
    );
  }
}
