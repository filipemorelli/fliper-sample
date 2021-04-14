import 'package:fliper/app/modules/home/widgets/summary_card/summary_card_widget.dart';
import 'package:fliper/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'models/SummaryModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          color: AppColors.darkBlue,
          onRefresh: () async {
            controller.refresh();
            return Future<void>.value();
          },
          child: Observer(
            builder: (BuildContext context) {
              if (controller.summaryModel.isEmpty) {
                return Center(
                  child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkBlue)),
                );
              }

              final List<SummaryModel> _summaries = controller.summaryModel;
              return ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: _summaries.length,
                itemBuilder: (BuildContext context, int i) {
                  return SummaryCardWidget(_summaries[i]);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
