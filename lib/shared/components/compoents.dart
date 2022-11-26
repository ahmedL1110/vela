import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false, //بدك ترجع الى الي قبل ولا لا
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Widget DefaultBotton({
  required Function function,
  required String text,
  required double width,
}) =>
    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2.r),
        child: ElevatedButton(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            function();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(226, 35, 38, 1),
            padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.w),
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );

Widget itemList({
  required Function() fun,
  required int selectedIndex,
  required int index,
  required String text,
  required IconData icon,
  required double marginBetween,
  required String lang,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 29.h),
    child: InkWell(
      onTap: fun,
      child: SizedBox(
        height: 60.h,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 3.w,
                  height: 25.h,
                  color:
                      selectedIndex == index ? Colors.red : Colors.transparent,
                  margin: EdgeInsets.only(
                      right: lang == 'en' ? marginBetween : 0,
                      left: lang == 'ar' ? marginBetween : 0),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  icon,
                  color: selectedIndex == index
                      ? Colors.red
                      : Colors.grey.shade600,
                  size: 28.r,
                ),
                Text(
                  text,
                  style: GoogleFonts.cairo(
                      color: selectedIndex == index
                          ? Colors.red
                          : Colors.grey.shade600,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget childItemList(
    {required Function() fun,
    required int selectedIndex,
    required int index,
    required double marginBetween,
    required Widget child}) {
  return InkWell(
    onTap: fun,
    child: SizedBox(
      height: 50.h,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 3.w,
                height: 25.h,
                color: selectedIndex == index ? Colors.red : Colors.transparent,
                margin: EdgeInsets.only(right: marginBetween),
              ),
            ],
          ),
          child,
        ],
      ),
    ),
  );
}
