import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Calling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        width: 960.w,
        height: 1024.h,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsetsDirectional.only(start: 24),
              height: 361.h,
              width: 960.w,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wisam Mahdi',
                    style:
                        GoogleFonts.cairo(color: Colors.white, fontSize: 24.sp),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '+972 59-542-5555',
                        style: GoogleFonts.cairo(
                            color: Colors.white, fontSize: 20.sp),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Icon(
                        Icons.copy,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45.h,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(102,255, 255, 255),
                          child: Icon(
                            Icons.chat_outlined,
                            color: Colors.white,
                            size: 23.r,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Container(
                        height: 45.h,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(102,255, 255, 255),
                          child: Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                            size: 23.r,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Container(
                        height: 45.h,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(102,255, 255, 255),
                          child: Icon(
                            Icons.videocam_outlined,
                            color: Colors.white,
                            size: 23.r,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    'Today, 8 November',
                    style: GoogleFonts.cairo(fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '8.22 PM',
                        style: GoogleFonts.cairo(
                            fontSize: 14.sp, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.videocam_outlined,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '8.22 PM',
                        style: GoogleFonts.cairo(
                            fontSize: 14.sp, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.videocam_outlined,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
