import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vela/modules/Login/Login.dart';
import 'package:vela/shared/components/compoents.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CodeComapny extends StatelessWidget {
  const CodeComapny({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350.w,
              height: 180.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/Login1.png')),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              AppLocalizations.of(context)!.enterCompanyCode,
              style: GoogleFonts.cairo(
                  fontSize: 48.sp, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(AppLocalizations.of(context)!.pleaseentercompanycodesoyoucanlogin,
                style: GoogleFonts.cairo(
                    fontSize: 24.sp, color: Color.fromRGBO(186, 186, 186, 1))),
            SizedBox(
              height: 50.h,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 548.w),
              height: 50.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    navigateTo(context, Login());
                  },
                  child: Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 247, 252, 1),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.w, vertical: 10.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintMaxLines: 1,
                          // hintText: '${index + 1}',
                          // hintStyle: TextStyle(
                          //   fontSize: 24.sp,
                          //   color: Color.fromRGBO(0, 0, 0, 1),
                          // ),
                        ),
                        style: GoogleFonts.cairo(
                          fontSize: 24.sp,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 20.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}