import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Destination extends StatelessWidget {
  const Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                      CircleAvatar(
                        backgroundColor: Color(0xff82d5b7),
                        radius:12.sp ,
                        child: CircleAvatar(backgroundColor:Colors.black,radius: 6.sp,),),
                        SizedBox(height: 12.h,),
                           Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.sp),
                child: Dash(
                    direction: Axis.vertical,
                    length: 40,
                    dashLength: 8,
                    dashColor: Colors.black
                    
                    ),
            ),
            SizedBox(height: 12.h,),

            Icon(Icons.location_on,color: Colors.red,size: 30,),

                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Jl Tirto Utomo No 41",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp),),

                


                  Text("Jl Tirto Utomo No 41",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp),),

                  
                   
                ],
              )

                ],
              )
            
            ],
          ),
          width: 330.w,
          height: 125.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12.sp))
          ),
        ),
      ),
    );
  }
}

