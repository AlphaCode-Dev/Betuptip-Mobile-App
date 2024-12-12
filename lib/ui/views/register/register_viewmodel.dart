import 'package:betuptip/app/app.locator.dart';
import 'package:betuptip/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _navigationService = locator<NavigationService>();

  void locateTermsandpolicy() {
    // _navigationService.navigateToTermsAndPolicyView();
  }

  void navigateBack() {
    _navigationService.back();
  }

  void locateLogin() {
    _navigationService.navigateToLoginView();
  }
}
