import 'package:fl_template/ui/pages/home/home_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePage extends ViewModelBuilderWidget<HomeViewModel> {
  final String argument;

  HomePage({Key key, this.argument}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel model, Widget child) {
    return Scaffold(
      body: Center(
        child: Text(model.title),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    final model = HomeViewModel();
    model.init(this.argument);
    return model;
  }
}
