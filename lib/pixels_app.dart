import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprints_shopping_app_with_localization/core/di/dependency_injection.dart';
import 'package:sprints_shopping_app_with_localization/core/language_cubit.dart';
import 'package:sprints_shopping_app_with_localization/core/routing/app_router.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/colors_manager.dart';
import 'package:sprints_shopping_app_with_localization/features/splash/presentation/splash_view.dart';
import 'package:sprints_shopping_app_with_localization/generated/l10n.dart';

class PixelsApp extends StatelessWidget {
  final AppRouter appRouter;
  const PixelsApp({super.key, required this.appRouter});

  // For checking on the locale state:
  // context.read<LanguageCubit>().state.languageCode == 'en'

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider<LanguageCubit>(
        create: (context) => getIt<LanguageCubit>(),
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp(
              // ------------- Localization -------------
              locale: locale,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              // ------------- Localization -------------
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
            );
          },
        ),
      ),
    );
  }
}
