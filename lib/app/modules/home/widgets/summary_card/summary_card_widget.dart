import 'package:fliper/app/app_localizations.dart';
import 'package:fliper/app/modules/home/widgets/summary_card_item/summary_card_item_widget.dart';
import 'package:fliper/app/modules/home/models/SummaryModel.dart';
import 'package:fliper/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fliper/extensions/number.dart';

class SummaryCardWidget extends StatelessWidget {
  const SummaryCardWidget(this._summaryModel);

  final SummaryModel _summaryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                child: Row(
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!
                          .translate('app/modules/home/widgets/summary_card/summary_card_widget.dart: Your summary'),
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Spacer(),
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert, color: AppColors.popupMenu),
                      tooltip: AppLocalizations.of(context)!
                          .translate('app/modules/home/widgets/summary_card/summary_card_widget.dart: Show menu'),
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(child: Text('exemplo')),
                        ];
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                      child: Text(
                        AppLocalizations.of(context)!.translate(
                            'app/modules/home/widgets/summary_card/summary_card_widget.dart: Amount invested'),
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.text,
                        ),
                      ),
                    ),
                    Text(
                      _summaryModel.total.formatReal,
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: SummaryCardItemWidget(
                  textLeft: AppLocalizations.of(context)!.translate(
                      'app/modules/home/widgets/summary_card/summary_card_widget.dart: Profitability / month'),
                  textRight: _summaryModel.profitability.percentage(3),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: SummaryCardItemWidget(
                  textLeft: AppLocalizations.of(context)!
                      .translate('app/modules/home/widgets/summary_card/summary_card_widget.dart: CDI'),
                  textRight: _summaryModel.cdi.percentage(2),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: SummaryCardItemWidget(
                  textLeft: AppLocalizations.of(context)!.translate(
                      'app/modules/home/widgets/summary_card/summary_card_widget.dart: Profitability / month'),
                  textRight: _summaryModel.gain.formatRealWithoutSeparation,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(
                    height: 0.5,
                    thickness: 0,
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
              if (_summaryModel.hasHistory)
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 100,
                    child: OutlinedButton(
                      child: Text(
                        AppLocalizations.of(context)!
                            .translate('app/modules/home/widgets/summary_card/summary_card_widget.dart: See more')
                            .toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.darkBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        padding: const EdgeInsets.fromLTRB(13, 6, 13, 6),
                        side: BorderSide(
                          width: 1,
                          color: AppColors.darkBlue,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
