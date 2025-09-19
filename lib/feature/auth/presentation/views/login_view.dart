import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:thimar/core/constant.dart';
import 'package:thimar/core/router/thimar_router.dart';
import 'package:thimar/core/style/thimar_style.dart';
import 'package:thimar/feature/auth/presentation/widget/cusotm_auth_text_fild.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_auth_button.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_key_text_fild.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';
import 'package:thimar/feature/auth/presentation/widget/key_and_auth_text_fild.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomThimarLogo(),
              SizedBox(
                height: 16.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مرحبا بك مرة أخرى',
                  style: ThimarStyle.styleBold16,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              InkWell(
                onTap: () {
                  context.go(ThimarRouter.signUp);
                },
                child: Text(
                  'يمكنك تسجيل الدخول الأن',
                  style: ThimarStyle.styleLight16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              KeyAndAuthTextFild(),
              SizedBox(
                height: 16.h,
              ),
              CusotmAuthTextFild(
                logo: lockLogo,
                hintText: 'كلمة المرور',
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'نسيت كلمة المرور ؟',
                  style: ThimarStyle.styleLight16,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomAuthButton(
                title: 'تسجيل الدخول',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
