import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class AnimatedPicture extends StatelessWidget {
  const AnimatedPicture({
    super.key,
    required this.slidingAnimation2,
  });

  final Animation<Offset> slidingAnimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation2,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation2,
          child: Image.asset(AssetData.logo),
        );
      },
    );
  }
}
