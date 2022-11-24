import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomOpener extends StatelessWidget {
  const BottomOpener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.h,
      width: 360.w,
      padding: EdgeInsets.only(top: 14.h),
      // color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,

      ),
      // color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Container(width: 106.w,
    height: 6.h,
    decoration: BoxDecoration(
    color: Color(0xffD9D9D9),
      borderRadius: BorderRadius.circular(8)),
      )
      ],)
    );
  }
}