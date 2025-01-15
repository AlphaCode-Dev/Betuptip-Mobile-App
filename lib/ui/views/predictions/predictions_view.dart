import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'predictions_viewmodel.dart';

class PredictionsView extends StackedView<PredictionsViewModel> {
  const PredictionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PredictionsViewModel viewModel,
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
  PredictionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PredictionsViewModel();
}
