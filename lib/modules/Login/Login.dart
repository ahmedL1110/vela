import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vela/Layout/LayoutScreen.dart';

import '../../shared/components/compoents.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              AppLocalizations.of(context)!.nowYouCanLogin,
              style: GoogleFonts.cairo(
                fontSize: 48.sp,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(AppLocalizations.of(context)!.pleaseEnterYourConactdetails,
                style: GoogleFonts.cairo(
                  fontSize: 24.sp,
                  color: Color.fromRGBO(164, 164, 164, 1),
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
                width: 400.w,
                child: Text(AppLocalizations.of(context)!.phoneNumber,
                    style: GoogleFonts.cairo(
                      fontSize: 20.sp,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ))),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 400.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                color: Color.fromRGBO(247, 247, 252, 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: TextFormField(
                  onTap: () {},
                  onChanged: (value) {
                    //loginCubit.saveTextFormField(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {},
                  maxLengthEnforcement:
                      MaxLengthEnforcement.truncateAfterCompositionEnds,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '+948 58-520-658',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  style: GoogleFonts.cairo(
                    fontSize: 14,
                    color: Color.fromRGBO(164, 164, 164, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
                width: 400.w,
                child: Text(AppLocalizations.of(context)!.password,
                    style: GoogleFonts.cairo(
                      fontSize: 20.sp,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ))),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 400.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                color: Color.fromRGBO(247, 247, 252, 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: TextFormField(
                  obscureText: true,
                  onTap: () {},
                  onChanged: (value) {
                    //loginCubit.saveTextFormField(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    // if (value == null) {
                    //   return 'رجاءا أدخل بريدك الإلكتروني';
                    // }
                    // return null;
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '*************',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  style: GoogleFonts.cairo(
                    fontSize: 14,
                    color: Color.fromRGBO(164, 164, 164, 1),
                  ),
                ),
              ),
            ),
            DefaultBotton(
              width: 400.w,
              function: () {
                navigateTo(context, LayoutScreen());
              },
              text: AppLocalizations.of(context)!.login,
            ),
          ],
        ),
      ),
    );
  }
}