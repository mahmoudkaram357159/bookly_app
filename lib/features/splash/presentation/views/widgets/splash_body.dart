import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../splash.dart';

class SplashBodyScreen extends StatelessWidget {
  const SplashBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AssetData.logo),
          )
        ],
      ),
    );
  }
}
