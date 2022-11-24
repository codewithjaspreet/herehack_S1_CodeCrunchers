import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';

class BottomOpener extends StatelessWidget {
  BottomOpener({Key? key}) : super(key: key);
  var _selectedActivities = [];

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
            Container(
              width: 106.w,
              height: 6.h,
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(8)),
            ),
            MultiSelectActivities()
          ],
        ));
  }
}

class MultiSelectActivities extends StatefulWidget {
  const MultiSelectActivities({
    Key? key,
  }) : super(key: key);

  @override
  State<MultiSelectActivities> createState() => _MultiSelectActivitiesState();
}

class _MultiSelectActivitiesState extends State<MultiSelectActivities> {
  var selected = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 181.w,
      child: Wrap(children: [
        Actitvity()
      ],),
    );
  }
}

class Actitvity extends StatelessWidget {
  const Actitvity({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Container(
            color: Color(0xff3AA766),
            padding: EdgeInsets.all(2),
            child: ClipOval(child: Container(
              color: Colors.white,
              child: Icon(Icons.local_gas_station_rounded,size: 36.w,),
width: 60.w,
height: 60.h,
            )),
          ),
        ),
        Text("")
      ],
    );
  }
}
