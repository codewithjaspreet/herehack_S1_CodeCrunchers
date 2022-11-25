import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12.sp))
          ),
          width: 300.w,
          height: 234.h,
          child: Padding(
            padding:  EdgeInsets.all(18.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 
              
              CheckRow(text: "Opening Time",),
              CheckRow(text: "Ratings",),
              CheckRow(text: "Cost",),
              CheckRow(text: "Distance",),
            ]),
          ),
        ),
      ),
    );
  }
}

class CheckRow extends StatelessWidget {

  final String text;

  CheckRow({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        RoundCheckBox(onTap: (selected){

        }),
        SizedBox(width: 15.w,),
        Text(text,style: TextStyle(color: Color(0xff374151),fontWeight: FontWeight.w400,fontSize: 18.sp),),
      ],
    );
  }
}