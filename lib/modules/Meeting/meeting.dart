import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Meeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: 960.w,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 96.h, left: 24.w, bottom: 69.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Meeting Members',
                              style: GoogleFonts.cairo(
                                  color: const Color(0xffa4a4a4),
                                  fontSize: 14.sp),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              '6 Members',
                              style: GoogleFonts.cairo(
                                  color: const Color(0xffffffff),
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 24.h, right: 32.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 360.w,
                                height: 82.h,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white10,
                                            child: Icon(
                                              Icons.add_circle_outline,
                                              color: Colors.white30,
                                              size: 26.r,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Text(
                                            'Invite More Member',
                                            style: GoogleFonts.cairo(
                                                color: const Color(0xffA4A4A4),
                                                fontSize: 8.sp),
                                          )
                                        ],
                                      ),
                                      joinProfile(const AssetImage(
                                          'asset/images/Home.png')),
                                      joinProfile(const AssetImage(
                                          'asset/images/Home.png')),
                                      joinProfile(const AssetImage(
                                          'asset/images/Home.png')),
                                      joinProfile(const AssetImage(
                                          'asset/images/Home.png')),
                                      joinProfile(const AssetImage(
                                          'asset/images/Home.png')),
                                      joinProfile(const AssetImage(
                                          'asset/images/Home.png')),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.fullscreen_outlined,
                                color: Colors.white,
                                size: 35.r,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 960.w,
                    child: const Image(
                        image: AssetImage('asset/images/meetingImage.png')),
                  ),
                ],
              ),
              Container(
                height: 74.h,
                width: 960.w,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffd9d9d9),
                        child: Icon(
                          Icons.person_add_alt_1_outlined,
                          color: Colors.black,
                          size: 25.r,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffd9d9d9),
                        child: Icon(
                          Icons.videocam_outlined,
                          color: Colors.black,
                          size: 25.r,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffd9d9d9),
                        child: Icon(
                          Icons.mic_none,
                          color: Colors.black,
                          size: 25.r,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffd9d9d9),
                        child: Icon(
                          Icons.chat_outlined,
                          color: Colors.black,
                          size: 25.r,
                        ),
                      ),
                    ),
                    Container(
                      width: 79.w,
                      height: 42.h,
                      color: Colors.red,
                      margin: EdgeInsets.only(left: 24.w),
                      child: const Icon(
                        Icons.call_end_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

Widget joinProfile(ImageProvider image) {
  return Container(
    margin: EdgeInsets.only(left: 4.w),
    child: CircleAvatar(
      backgroundColor: Colors.white10,
      foregroundImage: image,
    ),
  );
}
