import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vela/modules/Meeting/MeetingScreen.dart';
import 'package:vela/modules/Meeting/meeting.dart';
import 'package:vela/modules/calling/calling.dart';

import '../shared/components/compoents.dart';

class LayoutScreen extends StatefulWidget {
  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 252, 1),
      body: Row(
        children: [
          Container(
            color: const Color(0xFFF7F7FC),
            padding: EdgeInsets.only(top: 91.h),
            width: 80.w,
            child: ListView(
              children: [
                itemList(
                  fun: () {
                    selectedIndex = 0;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 0,
                  text: AppLocalizations.of(context)!.chats,
                  icon: Icons.chat_outlined,
                  marginBetween: 20.w,
                  lang: AppLocalizations.of(context)!.localeName,
                ),
                itemList(
                  fun: () {
                    selectedIndex = 1;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 1,
                  text: AppLocalizations.of(context)!.meeting,
                  icon: Icons.people_outline_rounded,
                  marginBetween: 17.w,
                  lang: AppLocalizations.of(context)!.localeName,
                ),
                itemList(
                  fun: () {
                    selectedIndex = 2;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 2,
                  text: AppLocalizations.of(context)!.tasking,
                  icon: Icons.list_alt_outlined,
                  marginBetween: 17.w,
                  lang: AppLocalizations.of(context)!.localeName,
                ),
                itemList(
                  fun: () {
                    selectedIndex = 3;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 3,
                  text: AppLocalizations.of(context)!.contacts,
                  icon: Icons.person_outline_rounded,
                  marginBetween: 17.w,
                  lang: AppLocalizations.of(context)!.localeName,
                ),
                itemList(
                  fun: () {
                    selectedIndex = 4;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 4,
                  text: AppLocalizations.of(context)!.calling,
                  icon: Icons.call,
                  marginBetween: 17.w,
                  lang: AppLocalizations.of(context)!.localeName,
                ),
                SizedBox(
                  height: 340.h,
                ),
                itemList(
                  fun: () {
                    selectedIndex = 5;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 5,
                  text: AppLocalizations.of(context)!.settings,
                  icon: Icons.settings,
                  marginBetween: 17.w,
                  lang: AppLocalizations.of(context)!.localeName,
                ),
                childItemList(
                  fun: () {
                    selectedIndex = 5;
                    setState(() {});
                  },
                  selectedIndex: selectedIndex,
                  index: 5,
                  marginBetween: 20.w,
                  child: CircleAvatar(
                      foregroundImage: const NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI8vOrpJL_wMPx-Ra2oDbTcWapgwtsHGhO-rwjzFLq&s'),
                      maxRadius: 24.r),
                )
              ],
            ),
          ),
          if (selectedIndex == 0)
            Container(
              width: 400.w,
              color: const Color(0xffffffff),
              padding: EdgeInsets.only(top: 96.h, left: 24.w, right: 24.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.chats,
                        style: GoogleFonts.cairo(
                            fontSize: 32.sp, fontWeight: FontWeight.w500),
                      ),
                      const Icon(Icons.edit),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32.h),
                    height: 42.h,
                    color: Color.fromRGBO(247, 247, 252, 1),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.bottom,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search_rounded,
                                size: 20.sp,
                                color: Colors.grey,
                              )),
                          hintText: AppLocalizations.of(context)!.searchOrStart,
                          hintStyle: GoogleFonts.cairo(
                            fontSize: 12.sp,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                      style: GoogleFonts.cairo(fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(bottom: 12.h),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 27.0.r,
                                backgroundImage: const AssetImage(
                                  'asset/images/Home.png',
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 150.w,
                                    child: Text('Mhmd mhmd',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.cairo(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: 150.w,
                                    child: Text('Hello wisam , how are you?',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            GoogleFonts.cairo(fontSize: 14.sp)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    '10.45PM',
                                    style: GoogleFonts.cairo(
                                        fontSize: 12.sp,
                                        color:
                                            Color.fromRGBO(164, 164, 164, 1)),
                                  ),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.r),
                                      ),
                                      elevation: 3,
                                      child: CircleAvatar(
                                        radius: 10.r,
                                        backgroundColor:
                                            Color.fromRGBO(226, 35, 38, 1),
                                        child: Text(
                                          '5',
                                          style: GoogleFonts.cairo(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize: 10.sp),
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      itemCount: 30,
                    ),
                  ),
                ],
              ),
            ),
          if (selectedIndex == 1)
            MeetingScrren(
                iconData1: Icons.videocam_sharp,
                iconData2: Icons.add_circle,
                name: AppLocalizations.of(context)!.meeting,
                name1: AppLocalizations.of(context)!.meetings),
          if (selectedIndex == 2)
            MeetingScrren(
                name: AppLocalizations.of(context)!.tasking,
                name1: AppLocalizations.of(context)!.taskings,
                iconData1: Icons.calendar_today_outlined,
                iconData2: Icons.menu),
          if (selectedIndex == 3)
            Container(
              width: 400.w,
              color: const Color(0xffffffff),
              padding: EdgeInsets.only(top: 96.h, left: 24.w, right: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.contacts,
                    style: GoogleFonts.cairo(
                        fontSize: 32.sp, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32.h),
                    height: 42.h,
                    color: Color.fromRGBO(247, 247, 252, 1),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.bottom,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search_rounded,
                                size: 20.sp,
                                color: Colors.grey,
                              )),
                          hintText: AppLocalizations.of(context)!.searchOrStart,
                          hintStyle: GoogleFonts.cairo(
                            fontSize: 12.sp,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                      style: GoogleFonts.cairo(fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(bottom: 12.h),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 27.0.r,
                                backgroundImage: const AssetImage(
                                  'asset/images/Home.png',
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200.w,
                                    child: Text('Mhmd mhmd',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.cairo(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: 30,
                    ),
                  ),
                ],
              ),
            ),
          if (selectedIndex == 4)
            Container(
              width: 400.w,
              color: const Color(0xffffffff),
              padding: EdgeInsets.only(top: 96.h, left: 24.w, right: 24.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.calling,
                        style: GoogleFonts.cairo(
                            fontSize: 32.sp, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      const Icon(Icons.delete_outlined),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Icon(Icons.filter),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32.h),
                    height: 42.h,
                    color: Color.fromRGBO(247, 247, 252, 1),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.bottom,
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search_rounded,
                                size: 20.sp,
                                color: Colors.grey,
                              )),
                          hintText: AppLocalizations.of(context)!.searchOrStart,
                          hintStyle: GoogleFonts.cairo(
                            fontSize: 12.sp,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                      style: GoogleFonts.cairo(fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(bottom: 12.h),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 27.0.r,
                                backgroundImage: const AssetImage(
                                  'asset/images/Home.png',
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 150.w,
                                    child: Text('Mhmd mhmd',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.cairo(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.call,
                                          size: 18.w, color: Colors.red),
                                      SizedBox(width: 6.w),
                                      Container(
                                        width: 150.w,
                                        child: Text('Cancelled',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.cairo(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffA4A4A4))),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    '10.45PM',
                                    style: GoogleFonts.cairo(
                                        fontSize: 12.sp,
                                        color:
                                            Color.fromRGBO(164, 164, 164, 1)),
                                  ),
                                  Icon(Icons.info_outline,
                                      size: 18.w, color: Colors.blue)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      itemCount: 30,
                    ),
                  ),
                ],
              ),
            ),
          if (selectedIndex == 0)
            Container(
              width: 960.w,
              height: 1024.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 45.h,
                        width: 45.w,
                        child: CircleAvatar(
                          radius: 25.r,
                          backgroundImage: AssetImage(
                            'asset/images/Home.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                        width: 400.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mhmd mhmd',
                                style: GoogleFonts.cairo(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 0, 0, 1))),
                            Text(AppLocalizations.of(context)!.activeNow,
                                style: GoogleFonts.cairo(
                                    fontSize: 12.sp,
                                    color: Color.fromRGBO(0, 0, 0, 1))),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                          width: 18.w,
                          height: 13.h,
                          child: Icon(
                            Icons.videocam_sharp,
                            color: Color.fromRGBO(49, 49, 49, 1),
                          )),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                          width: 18.w,
                          height: 13.h,
                          child: Icon(
                            Icons.call,
                            color: Color.fromRGBO(49, 49, 49, 1),
                          )),
                      SizedBox(
                        width: 30.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Container(
                          width: 1.w,
                          height: 30.h,
                          color: Color.fromRGBO(164, 164, 164, 0.4),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                          width: 18.w,
                          height: 13.h,
                          child: Icon(
                            Icons.search_outlined,
                            color: Color.fromRGBO(49, 49, 49, 1),
                          )),
                      SizedBox(
                        width: 30.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 960.w,
                    height: 2.h,
                    color: Color.fromRGBO(164, 164, 164, 0.4),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        if (index % 2 == 1)
                          return buildMyMessges(
                              text:
                                  'mmm , Not as you think it\'s all not okay. ahmed has');
                        return buildSendMessges(
                            text:
                                'Yes , Here ! How are you man  ? what is new ?  ');
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: 20,
                    ),
                  ),
                  Container(
                    height: 60.h,
                    width: 960.w,
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                            width: 33.w,
                          ),
                          InkWell(onTap: () {}, child: Icon(Icons.tag_faces)),
                          SizedBox(
                            width: 33.w,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Icon(Icons.cloud_upload_outlined)),
                          SizedBox(
                            width: 33.w,
                          ),
                        ]),
                        suffixIcon: InkWell(
                            onTap: () {},
                            child: Icon(Icons.keyboard_voice_sharp)),
                        border: InputBorder.none,
                        hintText: 'Tybe a message',
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        color: Color.fromRGBO(164, 164, 164, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (selectedIndex == 1) Meeting(),
          if (selectedIndex == 2) Meeting(),
          if (selectedIndex == 3) Calling(),
          if (selectedIndex == 4) Calling(),
        ],
      ),
    );
  }
}

Widget buildMyMessges({required String text}) {
  return Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Padding(
      padding: EdgeInsetsDirectional.only(
        start: 450.w,
        end: 20.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(226, 35, 38, 1),
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(10.0.r),
                  topEnd: Radius.circular(10.0.r),
                  topStart: Radius.circular(10.0.r),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                text,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Text(
            '10.45PM',
            style: GoogleFonts.cairo(
                fontSize: 11.sp, color: Color.fromRGBO(164, 164, 164, 1)),
          ),
        ],
      ),
    ),
  );
}

Widget buildSendMessges({required String text}) {
  return Align(
    alignment: AlignmentDirectional.centerStart,
    child: Padding(
      padding: EdgeInsetsDirectional.only(end: 450.w, start: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(10.0.r),
                  topEnd: Radius.circular(10.0.r),
                  topStart: Radius.circular(10.0.r),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                text,
                style: GoogleFonts.cairo(
                  color: Color.fromRGBO(49, 49, 49, 1),
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Text(
            '10.45PM',
            style: GoogleFonts.cairo(
                fontSize: 11.sp, color: Color.fromRGBO(164, 164, 164, 1)),
          ),
        ],
      ),
    ),
  );
}
