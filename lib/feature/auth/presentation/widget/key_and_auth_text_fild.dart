
import 'package:flutter/material.dart';
import 'package:thimar/core/constant.dart';
import 'package:thimar/feature/auth/presentation/widget/cusotm_auth_text_fild.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_key_text_fild.dart';

class KeyAndAuthTextFild extends StatelessWidget {
  const KeyAndAuthTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomKeyTextFild(),
        SizedBox(
          width: 9,
        ),
        Expanded(
          child: CusotmAuthTextFild(
            logo: phoneLogo,
            hintText: 'رقم الجوال',
          ),
        ),
      ],
    );
  }
}
