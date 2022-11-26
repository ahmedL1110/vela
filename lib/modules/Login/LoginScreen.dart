import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vela/modules/Login/CodeComapny.dart';

import '../../shared/components/compoents.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              AppLocalizations.of(context)!.welcome_to_Vela,
              style: GoogleFonts.cairo(
                  fontSize: 48.sp, color: Color.fromRGBO(164, 164, 164, 1)),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(AppLocalizations.of(context)!.a_simple_and_private,
                style: GoogleFonts.cairo(
                  fontSize: 24.sp,
                  color: Color.fromRGBO(164, 164, 164, 1),
                )),
            SizedBox(
              height: 50.h,
            ),
            DefaultBotton(
              width: 272.w,
              function: () {
                navigateTo(context, CodeComapny());
              },
              text: AppLocalizations.of(context)!.get_Started,
            ),
          ],
        ),
      ),
    );
  }
}