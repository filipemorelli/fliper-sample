import 'package:fliper/app/app_colors.dart';
import 'package:flutter/material.dart';

class SummaryCardItemWidget extends StatelessWidget {
  const SummaryCardItemWidget({
    required this.textLeft,
    required this.textRight,
  });

  final String textLeft;
  final String textRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          textLeft,
          style: TextStyle(
            color: AppColors.text,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Spacer(),
        Text(
          textRight,
          style: TextStyle(
            color: AppColors.darkBlue,
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
