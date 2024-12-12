import 'package:betuptip/app/app.locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _navigationService = locator<NavigationService>();
  void locateforgotpassword() {
    //_navigationService.navigateToForgotPassordView();
  }

  void navigateBack() {
    _navigationService.back();
  }
}
