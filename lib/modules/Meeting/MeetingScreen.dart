import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MeetingScrren extends StatelessWidget {
  final IconData iconData1;
  final IconData iconData2;
  final String name;
  final String name1;

  const MeetingScrren(
      {super.key,
      required this.iconData1,
      required this.iconData2,
      required this.name,
      required this.name1});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 14),
        width: 400.w,
        height: 1024.h,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 96.h,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 10, end: 24.w),
              child: Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.cairo(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(49, 49, 49, 1)),
                  ),
                  Spacer(),
                  Container(
                      width: 18.w,
                      height: 13.h,
                      child: Icon(
                        iconData1,
                        color: Color.fromRGBO(49, 49, 49, 1),
                      )),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                      width: 18.w,
                      height: 13.h,
                      child: Icon(
                        iconData2,
                        color: Color.fromRGBO(49, 49, 49, 1),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 10),
              width: 98.w,
              child: Text(
                name1,
                style: GoogleFonts.cairo(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(164, 164, 164, 1)),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  width: 91.w,
                  child: Text(
                    'Today,8 November',
                    style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.only(start: 24.w),
                    width: 372.w,
                    height: 114.h,
                    color: Color.fromRGBO(247, 247, 252, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 18.h,
                          width: 75.w,
                          child: Text(
                            'Design Preview',
                            style: GoogleFonts.cairo(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: 87.w,
                          height: 18.h,
                          child: Text(
                            '10 PM - 11.30 PM',
                            style: GoogleFonts.cairo(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: 8.w, top: 8.h, bottom: 8.h),
                          child: Container(
                            height: 38.h,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/images/Home.png')),
                                      ),
                                    ),
                                itemCount: 5),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.only(start: 24.w),
                    width: 372.w,
                    height: 114.h,
                    color: Color.fromRGBO(247, 247, 252, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 18.h,
                          width: 75.w,
                          child: Text(
                            'Flutter code',
                            style: GoogleFonts.cairo(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: 87.w,
                          height: 18.h,
                          child: Text(
                            '10 PM - 11.30 PM',
                            style: GoogleFonts.cairo(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: 8.w, top: 8.h, bottom: 8.h),
                          child: Container(
                            height: 38.h,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/images/Home.png')),
                                      ),
                                    ),
                                itemCount: 5),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  width: 109.w,
                  child: Text(
                    'Yestarday,7 November',
                    style: GoogleFonts.cairo(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.only(start: 24.w),
                    width: 372.w,
                    height: 114.h,
                    color: Color.fromRGBO(247, 247, 252, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 18.h,
                          width: 75.w,
                          child: Text(
                            'Design Preview',
                            style: GoogleFonts.cairo(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: 87.w,
                          height: 18.h,
                          child: Text(
                            '10 PM - 11.30 PM',
                            style: GoogleFonts.cairo(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: 8.w, top: 8.h, bottom: 8.h),
                          child: Container(
                            height: 38.h,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/images/Home.png')),
                                      ),
                                    ),
                                itemCount: 5),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
