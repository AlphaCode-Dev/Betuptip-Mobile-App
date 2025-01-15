import 'package:betuptip/ui/common/app_colors.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bottom_navbar_viewmodel.dart';

class BottomNavbarView extends StackedView<BottomNavbarViewModel> {
  const BottomNavbarView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BottomNavbarViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
         // Dynamically display the view based on selected index
        child:viewModel.views[viewModel.selectedIndex]
      ),
       bottomNavigationBar: ConvexAppBar(
          backgroundColor: AppColors.kcPrimaryOrange,
          color: AppColors.kcVeryWhiteSmoke,
          style: TabStyle.react,
          curveSize: 70,
          initialActiveIndex: 0,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.scoreboard, title: 'Odds'),
            TabItem(icon: Icons.newspaper_sharp, title: 'News'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          onTap: (int index) {
            viewModel.updateSelectedIndex(index);
          },
        )
    );
  }

  @override
  BottomNavbarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavbarViewModel();
}
