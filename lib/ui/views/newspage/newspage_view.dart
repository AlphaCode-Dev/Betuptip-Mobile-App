import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'newspage_viewmodel.dart';

class NewspageView extends StackedView<NewspageViewModel> {
  const NewspageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NewspageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  NewspageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NewspageViewModel();
}
