import 'package:flutter/material.dart';
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
    return MaterialApp.router(
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
    );
  }
}
