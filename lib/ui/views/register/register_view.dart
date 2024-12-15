import 'package:betuptip/generated/l10n.dart';
import 'package:betuptip/ui/common/app_colors.dart';
import 'package:betuptip/ui/extenstions/app_typography.dart';
import 'package:betuptip/ui/views/register/register_view.form.dart';
import 'package:betuptip/ui/widgets/common/betuptip_textfield.dart';
import 'package:betuptip/ui/widgets/common/custom_back_button.dart';
import 'package:betuptip/ui/widgets/common/signupwithgoogle.dart';
import 'package:betuptip/ui/widgets/primary_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'register_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'firstname'),
  FormTextField(name: 'lastname'),
  FormTextField(name: 'email'),
  FormTextField(name: 'phone'),
  FormTextField(name: 'password'),
])
class RegisterView extends StackedView<RegisterViewModel> with $RegisterView {
  const RegisterView({Key? key}) : super(key: key);

  final bool _isChecked = false;

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    ThemeData theme = Theme.of(context);
    // Palette? palette = theme.extension<Palette>();
    AppTypography? appTypography = theme.extension<AppTypography>();
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        leading: BkButton(
          onPressed: viewModel.navigateBack,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Form(
            key: viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  S.of(context).create_account,
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: AppColors.kcpryBlack,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    S.of(context).create_account_sub,
                    style: appTypography?.paragraphSmall?.copyWith(
                      color: AppColors.kcMediumGrey,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: BetuptipTextField(
                              controller: firstnameController,
                              hintStyle: const TextStyle(
                                color: AppColors.kcLightGrey,
                              ),
                              hintText: S.of(context).first_name,
                              width: 300,
                              borderRadius: BorderRadius.circular(12),
                              borderColor: AppColors.bkcOrange1,
                              fillColor: AppColors.kcVeryWhiteSmoke,
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: BetuptipTextField(
                              controller: lastnameController,
                              hintText: S.of(context).last_name,
                              hintStyle: const TextStyle(
                                color: AppColors.kcLightGrey,
                              ),
                              width: 300,
                              height: 50,
                              borderRadius: BorderRadius.circular(12),
                              borderColor: AppColors.bkcOrange1,
                              fillColor: AppColors.kcVeryWhiteSmoke,
                              textStyle: const TextStyle(
                                color: AppColors.kcLightGrey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      BetuptipTextField(
                        controller: emailController,
                        hintText: S.of(context).phone_number,
                        hintStyle: const TextStyle(
                          color: AppColors.kcLightGrey,
                        ),
                        width: 300,
                        borderRadius: BorderRadius.circular(12),
                        borderColor: AppColors.bkcOrange1,
                        fillColor: AppColors.kcVeryWhiteSmoke,
                        textStyle: const TextStyle(
                          color: AppColors.kcDarkGreyColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      BetuptipTextField(
                        controller: phoneController,
                        hintText: S.of(context).email_address,
                        hintStyle: const TextStyle(
                          color: AppColors.kcLightGrey,
                        ),
                        width: 300,
                        borderRadius: BorderRadius.circular(12),
                        borderColor: AppColors.bkcOrange1,
                        fillColor: AppColors.kcVeryWhiteSmoke,
                        textStyle: const TextStyle(
                          color: AppColors.kcDarkGreyColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10.w),
                      BetuptipTextField(
                        controller: phoneController,
                        hintText: S.of(context).password,
                        hintStyle: const TextStyle(
                          color: AppColors.kcLightGrey,
                        ),
                        width: 300,
                        height: 50,
                        // prefix: Text(S.of(context).show,
                        borderRadius: BorderRadius.circular(12),
                        borderColor: AppColors.bkcOrange1,
                        fillColor: AppColors.kcVeryWhiteSmoke,
                        textStyle: const TextStyle(
                          color: AppColors.kcDarkGreyColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      BetuptipTextField(
                        controller: passwordController,
                        hintText: S.of(context).confirm_password,
                        hintStyle: const TextStyle(
                          color: AppColors.kcLightGrey,
                        ),
                        width: 300,
                        borderRadius: BorderRadius.circular(12),
                        borderColor: AppColors.bkcOrange1,
                        fillColor: AppColors.kcVeryWhiteSmoke,
                        textStyle: const TextStyle(
                          color: AppColors.kcDarkGreyColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SignUpWithGoogleButton(onPressed: () {
                        if (kDebugMode) {
                          print("google");
                        }
                      }),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {},
                            // onChanged: (bool? value) {
                            //   setState(() {
                            //     _isChecked = value ?? false;
                            //   });
                            // },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: S.of(context).terms_of_service,
                                    style: const TextStyle(
                                        color: AppColors.kcpryBlack),
                                  ),
                                  TextSpan(
                                    text: S.of(context).term,
                                    style: const TextStyle(
                                        color: AppColors.kcMainBlue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        viewModel.locateTermsandpolicy();
                                      },
                                  ),
                                  TextSpan(
                                    text: S.of(context).and,
                                    style: const TextStyle(
                                        color: AppColors.kcpryBlack),
                                  ),
                                  TextSpan(
                                    text: S.of(context).privacy,
                                    style: const TextStyle(
                                        color: AppColors.kcMainBlue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle privacy policy tap
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      PrimaryButton(
                        text: S.of(context).Continue,
                        textColor: AppColors.kcVeryWhiteSmoke,
                        onTap: () {
                          viewModel.locateHome();
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: S.of(context).have_an_account,
                            style: const TextStyle(color: AppColors.kcpryBlack),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Login',
                                style: const TextStyle(
                                  color: AppColors.kcMainBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    viewModel.locateLogin();
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
