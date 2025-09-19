import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:thimar/core/router/thimar_router.dart';
import 'package:thimar/core/style/thimar_style.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_auth_button.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';
import 'package:thimar/feature/auth/presentation/widget/key_and_auth_text_fild.dart';

class ForgertPasswordView extends StatelessWidget {
  const ForgertPasswordView({super.key});

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
              Text(
                'نسيت كلمة المرور',
                style: ThimarStyle.styleBold16,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'أدخل رقم الجوال المرتبط بحسابك',
                style: ThimarStyle.styleLight16,
              ),
              SizedBox(
                height: 30.h,
              ),
              KeyAndAuthTextFild(),
              SizedBox(
                height: 20.h,
              ),
              CustomAuthButton(
                title: 'تأكيد رقم الجوال',
                onPressed: () {
                  context.go(ThimarRouter.verfiyOtp);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
