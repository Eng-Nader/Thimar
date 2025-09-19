import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/router/thimar_router.dart';

void main() {
  runApp(
    Thimar(
      thimarRouter: ThimarRouter(),
    ),
  );
}

class Thimar extends StatelessWidget {
  const Thimar({super.key, required this.thimarRouter});
  final ThimarRouter thimarRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: thimarRouter.router,
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
        theme: ThemeData(
          fontFamily: 'Tajawal',
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
