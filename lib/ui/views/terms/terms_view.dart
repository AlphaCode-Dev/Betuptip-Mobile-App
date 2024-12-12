import 'package:betuptip/generated/l10n.dart';
import 'package:betuptip/ui/common/app_colors.dart';
import 'package:betuptip/ui/widgets/common/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'terms_viewmodel.dart';

class TermsView extends StackedView<TermsViewModel> {
  const TermsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TermsViewModel viewModel,
    Widget? child,
  ) {
     ThemeData theme = Theme.of(context);
    // Palette? palette = theme.extension<Palette>();
    //AppTypography? appTypography = theme.extension<AppTypography>();
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        leading: BkButton(
          onPressed: viewModel.navigateBack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              S.of(context).terms_header,
              style: theme.textTheme.headlineLarge?.copyWith(
                color: AppColors.kcMainBlue,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView(
                children: [
                  RichText(
                      text: TextSpan(
                          text: S.of(context).terms_details,
                          style: const TextStyle(color: AppColors.kcpryBlack))),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  TermsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TermsViewModel();
}
