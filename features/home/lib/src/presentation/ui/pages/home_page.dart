import 'package:dependencies/auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:car_crew_ui_kit/car_crew_ui_kit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: CCAsset.logo(
          logo: CCLogo.banuaCoder,
          width: 120.w,
          height: 120.h,
          fit: BoxFit.cover,
        ),
      ),
      body: const Center(
        child: Text('Hello World!\n$appFlavor'),
      ),
    );
  }
}
