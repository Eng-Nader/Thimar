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
import 'package:thimar/feature/auth/presentation/widget/key_and_auth_text_fild.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});
  final List<AuthLogoModel> logoList = const [
    AuthLogoModel(flagLogo, 'المدينة'),
    AuthLogoModel(lockLogo, 'كلمة المرور'),
    AuthLogoModel(lockLogo, 'كلمة المرور'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomThimarLogo(),
                Text(
                  'مرحبا بك مرة أخرى',
                  style: ThimarStyle.styleBold16,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'يمكنك تسجيل حساب جديد الأن',
                  style: ThimarStyle.styleLight16,
                ),
                SizedBox(
                  height: 23.h,
                ),
                CusotmAuthTextFild(
                  logo: userLogo,
                  hintText: 'اسم المستخدم',
                ),
                SizedBox(
                  height: 16,
                ),
                KeyAndAuthTextFild(),
                ...List.generate(
                  logoList.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: CusotmAuthTextFild(
                        logo: logoList[index].logo,
                        hintText: logoList[index].title,
                      ),
                    );
                  },
                ),
                CustomAuthButton(
                  title: 'تسجيل',
                  onPressed: () {
                    context.go(ThimarRouter.login);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
