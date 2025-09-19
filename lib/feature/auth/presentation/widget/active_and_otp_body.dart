import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:thimar/core/router/thimar_router.dart';
import 'package:thimar/core/style/thimar_style.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_auth_button.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_cirecle_count.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_pin_code_filds.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_resend_button.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';

class ActiveAndOtpBody extends StatefulWidget {
  const ActiveAndOtpBody({super.key, required this.title});
  final String title;

  @override
  State<ActiveAndOtpBody> createState() => _ActiveAndOtpBodyState();
}

class _ActiveAndOtpBodyState extends State<ActiveAndOtpBody> {
  bool isActiveTimer = true;
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: SafeArea(
          child: SingleChildScrollView(
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
                    widget.title,
                    style: ThimarStyle.styleBold16.copyWith(),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'أدخل الكود المكون من 4 أرقام المرسل علي رقم ',
                        style: ThimarStyle.styleLight16,
                      ),
                      WidgetSpan(
                        child: Row(
                          children: [
                            Text(
                              '+9660548745',
                              textDirection: TextDirection.ltr,
                              style: ThimarStyle.styleLight16,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'تغيير رقم الجوال',
                                style: ThimarStyle.styleBold16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomPinCodeFilds(
                  textEditingController: codeController,
                  onChange: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomAuthButton(
                  title: 'تأكيد الكود',
                  onPressed: codeController.text.length != 4
                      ? null
                      : () {
                          context.go(ThimarRouter.createPassword);
                        },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    'لم تستلم الكود ؟\n يمكنك إعادة إرسال الكود بعد',
                    style: ThimarStyle.styleLight16,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                if (isActiveTimer)
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: CustomCirecleCount(
                      onComplete: () {
                        isActiveTimer = false;
                        setState(() {});
                      },
                    ),
                  )
                else
                  Center(
                    child: CustomResendButton(
                      onPressed: () {
                        isActiveTimer = true;
                        setState(() {});
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
