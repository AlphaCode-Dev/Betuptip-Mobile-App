import 'package:betuptip/generated/l10n.dart';
import 'package:betuptip/ui/common/app_asset.dart';
import 'package:betuptip/ui/common/app_colors.dart';
import 'package:betuptip/ui/extenstions/app_typography.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    ThemeData theme = Theme.of(context);
    // Palette? palette = theme.extension<Palette>();
    AppTypography? appTypography = theme.extension<AppTypography>();
    return Scaffold(
        backgroundColor: AppColors.kcMainBlk,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(AppAssets.profileIcon),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).profile_greet,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: AppColors.kcVeryWhiteSmoke,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              S.of(context).profile_name,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: AppColors.kcVeryWhiteSmoke,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_outlined,
                                color: AppColors.kcVeryWhiteSmoke,
                                size: 26,
                              ),
                            ),
                            Positioned(
                              right: 10.r,
                              top: 10,
                              child: Container(
                                height: 8.h,
                                width: 8.w,
                                decoration: const BoxDecoration(
                                  color: AppColors.kcNotifiPink,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(width: 5),
                        // Search Icon
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 26,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).football_news,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: AppColors.kcVeryWhiteSmoke,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      S.of(context).see_all,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: AppColors.kcPrimaryOrange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
