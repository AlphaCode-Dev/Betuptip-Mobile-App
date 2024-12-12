import 'package:betuptip/generated/l10n.dart';
import 'package:betuptip/ui/common/app_textstyles.dart';
import 'package:betuptip/ui/extenstions/app_typography.dart';
import 'package:betuptip/utilities/context_util.dart';
import 'package:flutter/material.dart';
import 'package:betuptip/app/app.bottomsheets.dart';
import 'package:betuptip/app/app.dialogs.dart';
import 'package:betuptip/app/app.locator.dart';
import 'package:betuptip/app/app.router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
//import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (context, child) {
        return GestureDetector(
          onTap: () => ContextUtil.hideKeyboard(context),
          child: MaterialApp(
            debugShowCheckedModeBanner: true,
            initialRoute: Routes.startupView,
            title: "Betuptip",
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: ThemeData(
              extensions: [
                AppTypography(
                  headingXSmall: AppTextStyles.headingXSmall,
                  buttonInput: AppTextStyles.buttonInput,
                  paragraphLarge: AppTextStyles.paragraphLarge,
                  paragraphMedium: AppTextStyles.paragraphMedium,
                  paragraphSmall: AppTextStyles.paragraphSmall,
                  paragraphXSmall: AppTextStyles.paragraphXSmall,
                  labelXSmall: AppTextStyles.labelXSmall,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
