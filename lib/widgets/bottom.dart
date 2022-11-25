import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_app/Controller/SearchExample.dart';

class BottomOpener extends StatelessWidget {
  BottomOpener(this.searchExample, {Key? key}) : super(key: key);

  SearchExample? searchExample;
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
            SizedBox(
              height: 10.h,
            ),
            MultiSelectActivities(searchExample)
          ],
        ));
  }
}

class MultiSelectActivities extends StatefulWidget {
  MultiSelectActivities(this.searchExample, {Key? key}) : super(key: key);
  SearchExample? searchExample;
  @override
  State<MultiSelectActivities> createState() => _MultiSelectActivitiesState();
}

class _MultiSelectActivitiesState extends State<MultiSelectActivities> {
  List<String> selected = [];

  List<Map<String, dynamic>> Activities = [
    {
      'icon': Icons.local_gas_station_rounded,
      'name': 'Gas Station',
    },
    {
      'icon': Icons.restaurant_outlined,
      'name': 'Restraunt',
      // 'value':
    },
    {'icon': Icons.local_hospital_outlined, 'name': 'Hospital'},
    {'icon': Icons.attach_money_outlined, 'name': 'Atm'},
    {'icon': Icons.wine_bar_rounded, 'name': 'Night Bar'},
    {'icon': Icons.hotel, 'name': 'Hotel'},
    {'icon': Icons.park, 'name': 'Family Outing'},
    {'icon': Icons.sell_rounded, 'name': 'Shopping'},
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...Activities.map((singleActivity) {
          return InkWell(
            onTap: () {
              if (selected.contains(singleActivity['name'])) {
                setState(() {
                  selected.remove(singleActivity['name']);
                });
              } else {
                setState(() {
                  selected.add(singleActivity['name']);
                });
              }
              print("DONEE");
              widget.searchExample?.searchExample(selected.last);
            },
            child: Activity(
              name: singleActivity['name'],
              icon: singleActivity['icon'],
              selected: selected.contains(singleActivity['name']),
            ),
          );
        }).toList(),
      ],
    );
  }
}

class Activity extends StatelessWidget {
  const Activity(
      {Key? key,
      required this.name,
      required this.icon,
      required this.selected})
      : super(key: key);
  final String name;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 11.w, vertical: 6.h),
          child: ClipOval(
            child: Container(
                width: 60.w,
                height: 60.h,
                padding: EdgeInsets.all(2),
                color: Color(0xff3AA766),
                child: ClipOval(
                  child: Container(
                    color: selected ? Color(0xff3AA766) : Colors.white,
                    child: Icon(
                      icon,
                      size: 40,
                      color: selected ? Colors.white : Color(0xff3AA766),
                    ),
                  ),
                )),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(name,
            style: TextStyle(
                fontFamily: GoogleFonts.openSans().fontFamily,
                color: Color(0xff3AA766),
                fontSize: 12.sp)),
      ],
    );
  }
}
