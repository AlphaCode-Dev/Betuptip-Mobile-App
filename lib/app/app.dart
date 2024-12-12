import 'package:betuptip/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:betuptip/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:betuptip/ui/views/home/home_view.dart';
import 'package:betuptip/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:betuptip/ui/views/register/register_view.dart';
import 'package:betuptip/ui/views/login/login_view.dart';
import 'package:betuptip/ui/views/terms/terms_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: TermsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
