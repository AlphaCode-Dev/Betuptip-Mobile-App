import 'package:betuptip/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TermsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateBack() {
    _navigationService.back();
  }
}
