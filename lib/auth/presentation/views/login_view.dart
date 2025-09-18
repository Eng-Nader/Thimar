import 'package:flutter/material.dart';
import 'package:thimar/auth/presentation/widget/custom_pin_code_filds.dart';
import 'package:thimar/auth/presentation/widget/custom_thimar_logo.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomThimarLogo(),
              SizedBox(
                height: 16,
              ),

              Text(
                'نسيت كلمة المرور',
                style: ThimarStyle.styleBold16.copyWith(),
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
            ],
          ),
        ),
      ),
    );
  }
}
