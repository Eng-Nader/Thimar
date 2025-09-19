import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:thimar/core/constant.dart';
import 'package:thimar/core/router/thimar_router.dart';
import 'package:thimar/core/style/thimar_style.dart';
import 'package:thimar/feature/auth/data/models/auth_logo_model.dart';
import 'package:thimar/feature/auth/presentation/widget/cusotm_auth_text_fild.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_auth_button.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});
  final List<AuthLogoModel> logoList = const [
    AuthLogoModel(lockLogo, 'كلمة المرور'),
    AuthLogoModel(lockLogo, 'كلمة المرور'),
  ];

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
                'أدخل كلمة المرور الجديدة',
                style: ThimarStyle.styleLight16,
              ),

              ...List.generate(
                logoList.length,
                (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.r),
                    child: CusotmAuthTextFild(
                      logo: logoList[index].logo,
                      hintText: logoList[index].title,
                    ),
                  );
                },
              ),

              CustomAuthButton(
                title: 'تغيير كلمة المرور',
                onPressed: () {
                  context.go(ThimarRouter.activeaccount);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
