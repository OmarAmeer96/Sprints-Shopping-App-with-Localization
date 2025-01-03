import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/app_router.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/features/splash/presentation/splash_view.dart';

class PixelsApp extends StatelessWidget {
  final AppRouter appRouter;
  const PixelsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ).copyWith(
          scaffoldBackgroundColor: ColorsManager.primaryColor,
          colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsManager.primaryColor,
          ),
        ),
        home: SplashView(),
      ),
    );
  }
}
