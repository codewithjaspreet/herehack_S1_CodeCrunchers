import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
     body: Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            
            image: DecorationImage(image: AssetImage('assets/bg.png'),fit: BoxFit.cover)
          ),
        ),
        Positioned(
          left: 25.w,
          child: Image.asset('assets/logo.png'),
        ),
        Positioned(
          
          left: 15.w,
          
          child: Container(
          child: Padding(
            padding:  EdgeInsets.all(18.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login With Email",style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600,fontSize: 16.sp),),
                SizedBox(height: 30.h,),
                Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15.sp),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(12.sp))

                    ),
                    hintText: 'Enter email id'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                  left: 15.w, right: 15.w, top: 15.h, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                

                obscureText: true,
                decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.sp))
                    ),
                    hintText: 'Enter password'),
              ),
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password ?",style: TextStyle(color: Colors.green),
                )
              ],
              
            ),
            SizedBox(height: 12.h,),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image.asset("assets/google.png"),
                    Text("Google" ,style: TextStyle(color: Colors.black,fontSize: 15.99.sp , fontWeight: FontWeight.bold),)
                  ]),
              width: 132.w,
              height: 42.h,

              decoration: BoxDecoration(
                
                    boxShadow: [
      BoxShadow(
        blurRadius: 2,
        
        
      ),
      

    ],
                
                color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12.sp)),

              ),
            )
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              child: Center(child: Text("Login" ,style: TextStyle(color: Colors.white ,fontSize: 22.sp,fontWeight: FontWeight.bold),)),
              width: 297.w,
              height: 51.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                color: Color(0xFF3AA766)
              ),
            ),
            SizedBox(height: 28.h,),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account ?'),
                    InkWell(
                      onTap: () {
                      },
                      child: const Text(
                        ' Create Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
            ]),
          ),
          height: 419.h,
          width: 331.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp),
            color: Colors.white
          ),
        ),
        top: 250.h,)
      ],
     ),
    );
  }
}