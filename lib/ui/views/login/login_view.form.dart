// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String LoginemailValueKey = 'loginemail';
const String EnterpassordValueKey = 'enterpassord';

final Map<String, TextEditingController> _LoginViewTextEditingControllers = {};

final Map<String, FocusNode> _LoginViewFocusNodes = {};

final Map<String, String? Function(String?)?> _LoginViewTextValidations = {
  LoginemailValueKey: null,
  EnterpassordValueKey: null,
};

mixin $LoginView {
  TextEditingController get loginemailController =>
      _getFormTextEditingController(LoginemailValueKey);
  TextEditingController get enterpassordController =>
      _getFormTextEditingController(EnterpassordValueKey);

  FocusNode get loginemailFocusNode => _getFormFocusNode(LoginemailValueKey);
  FocusNode get enterpassordFocusNode =>
      _getFormFocusNode(EnterpassordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_LoginViewTextEditingControllers.containsKey(key)) {
      return _LoginViewTextEditingControllers[key]!;
    }

    _LoginViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginViewFocusNodes.containsKey(key)) {
      return _LoginViewFocusNodes[key]!;
    }
    _LoginViewFocusNodes[key] = FocusNode();
    return _LoginViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    loginemailController.addListener(() => _updateFormData(model));
    enterpassordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    loginemailController.addListener(() => _updateFormData(model));
    enterpassordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          LoginemailValueKey: loginemailController.text,
          EnterpassordValueKey: enterpassordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _LoginViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginViewFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginViewTextEditingControllers.clear();
    _LoginViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get loginemailValue =>
      this.formValueMap[LoginemailValueKey] as String?;
  String? get enterpassordValue =>
      this.formValueMap[EnterpassordValueKey] as String?;

  set loginemailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LoginemailValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(LoginemailValueKey)) {
      _LoginViewTextEditingControllers[LoginemailValueKey]?.text = value ?? '';
    }
  }

  set enterpassordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EnterpassordValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(EnterpassordValueKey)) {
      _LoginViewTextEditingControllers[EnterpassordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasLoginemail =>
      this.formValueMap.containsKey(LoginemailValueKey) &&
      (loginemailValue?.isNotEmpty ?? false);
  bool get hasEnterpassord =>
      this.formValueMap.containsKey(EnterpassordValueKey) &&
      (enterpassordValue?.isNotEmpty ?? false);

  bool get hasLoginemailValidationMessage =>
      this.fieldsValidationMessages[LoginemailValueKey]?.isNotEmpty ?? false;
  bool get hasEnterpassordValidationMessage =>
      this.fieldsValidationMessages[EnterpassordValueKey]?.isNotEmpty ?? false;

  String? get loginemailValidationMessage =>
      this.fieldsValidationMessages[LoginemailValueKey];
  String? get enterpassordValidationMessage =>
      this.fieldsValidationMessages[EnterpassordValueKey];
}

extension Methods on FormStateHelper {
  setLoginemailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LoginemailValueKey] = validationMessage;
  setEnterpassordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EnterpassordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    loginemailValue = '';
    enterpassordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      LoginemailValueKey: getValidationMessage(LoginemailValueKey),
      EnterpassordValueKey: getValidationMessage(EnterpassordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _LoginViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _LoginViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      LoginemailValueKey: getValidationMessage(LoginemailValueKey),
      EnterpassordValueKey: getValidationMessage(EnterpassordValueKey),
    });
