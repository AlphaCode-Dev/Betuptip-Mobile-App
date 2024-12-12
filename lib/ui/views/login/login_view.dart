import 'package:betuptip/generated/l10n.dart';
import 'package:betuptip/ui/common/app_colors.dart';
import 'package:betuptip/ui/extenstions/app_typography.dart';
import 'package:betuptip/ui/views/login/login_view.form.dart';
import 'package:betuptip/ui/widgets/common/betuptip_textfield.dart';
import 'package:betuptip/ui/widgets/common/custom_back_button.dart';
import 'package:betuptip/ui/widgets/common/signupwithgoogle.dart';
import 'package:betuptip/ui/widgets/primary_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'loginemail'),
  FormTextField(name: 'enterpassord')
])
class LoginView extends StackedView<LoginViewModel> with $LoginView{
  const LoginView({Key? key}) : super(key: key);

  final bool _isChecked = false;
  
  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    ThemeData theme = Theme.of(context);
    // Palette? palette = theme.extension<Palette>();
    AppTypography? appTypography = theme.extension<AppTypography>();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.kcVeryWhiteSmoke,
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
                  S.of(context).Welcome_Back,
                  style: theme.textTheme.headlineLarge?.apply(
                    color: AppColors.kcMainBlue,
                    //fontStyle: 300
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Text(
                    S.of(context).Welcome_sub,
                    style: appTypography?.paragraphSmall?.copyWith(
                      color: AppColors.kcMediumGrey,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              S.of(context).login_email,
                              style: appTypography?.paragraphSmall?.copyWith(
                                color: AppColors.kcMediumGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          BetuptipTextField(
                            controller: TextEditingController(),
                            //hintText: S.of(context).login_email,
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
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              S.of(context).login_password,
                              style: appTypography?.paragraphSmall?.copyWith(
                                color: AppColors.kcMediumGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          BetuptipTextField(
                            controller: TextEditingController(),
                            //hintText: S.of(context).password,
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   isChecked = value!;
                                    // });
                                  },
                                  activeColor: AppColors.kcMainBlue),
                              const Text('Keep me signed in',
                                  style: TextStyle(
                                    color: AppColors.kcpryBlack,
                                  )),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              viewModel.locateforgotpassword();
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: AppColors.kcMainBlue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SignUpWithGoogleButton(onPressed: () {
                        if (kDebugMode) {
                          print("google");
                        }
                      })
                    ],
                  ),
                ),
                PrimaryButton(
                  text: S.of(context).sign_in,
                  textColor: AppColors.kcVeryWhiteSmoke,
                ),
                SizedBox(
                  height: 25.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
