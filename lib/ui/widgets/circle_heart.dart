import 'package:flutter/material.dart';

import '../../exports.dart';

class CircleHeart extends StatelessWidget {
  final double? radius;

  const CircleHeart({Key? key, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius! * 2 + 6,
      width: radius! * 2 + 6,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.backgroundGrey,
      ),
      child: Container(
        alignment: Alignment.center,
        height: radius! * 2,
        width: radius! * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.green,
        ),
        child: Icon(Icons.favorite, size: 12.h),
      ),
    );
  }
}
