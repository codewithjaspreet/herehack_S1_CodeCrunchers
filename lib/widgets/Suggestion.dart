import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Suggestion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          child: Row(children: [
            Container(
              width: 119.w,
              height: 108.h,
              decoration: BoxDecoration(

                // image: Decoration,
                borderRadius: BorderRadius.all(Radius.circular(12.sp)),

                color: Colors.black
              ),
            )
          ]),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(12.sp))
          ),
          width: 340.w,
          height: 147.h,
        ),
      ),
    );
  }
}