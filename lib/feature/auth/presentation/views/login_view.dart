import 'package:flutter/material.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_auth_button.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_pin_code_filds.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';
import 'package:thimar/core/style/thimar_style.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomThimarLogo(),
              SizedBox(
                height: 16,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'نسيت كلمة المرور',
                  style: ThimarStyle.styleBold16.copyWith(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال',
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
                height: 25,
              ),
              CustomPinCodeFilds(),
              SizedBox(
                height: 30,
              ),
              CustomAuthButton(title: 'تأكيد الكود'),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'لم تستلم الكود ؟\n يمكنك إعادة إرسال الكود بعد',
                  style: ThimarStyle.styleLight16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
