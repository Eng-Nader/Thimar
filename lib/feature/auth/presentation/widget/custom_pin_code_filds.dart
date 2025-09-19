import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:thimar/core/color/thimar_color.dart';

class CustomPinCodeFilds extends StatelessWidget {
  const CustomPinCodeFilds({
    super.key,
    required this.textEditingController,
    required this.onChange,
  });
  final TextEditingController textEditingController;
  final ValueChanged<String> onChange;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      onChanged: onChange,
      controller: textEditingController,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      textStyle: TextStyle(
        color: Colors.white,
      ),
      enableActiveFill: true,
      appContext: context,
      length: 4,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        activeFillColor: ThimarColor.primaryColor,
        selectedFillColor: ThimarColor.primaryColor,
        inactiveFillColor: Colors.white,
        fieldHeight: 60.h,
        fieldWidth: 70.w,
        borderRadius: BorderRadius.circular(16),
        selectedBorderWidth: 0,
        activeBorderWidth: 0,
        inactiveBorderWidth: 0,
        disabledBorderWidth: 0,
        activeColor: Colors.white,
        inactiveColor: Color(0xfff3f3f3),
      ),
    );
  }
}
