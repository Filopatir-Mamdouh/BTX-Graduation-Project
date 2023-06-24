import 'package:flutter/material.dart';

class HoursWidget extends StatelessWidget {
  final String hours;
  const HoursWidget({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);
    TextStyle headingTextStyle =
        theme.textTheme.bodyText2!.copyWith(color: Colors.white);
    return Container(
      child: Row(
        children: [
          Container(
            width: sw * (0.05),
            alignment: Alignment.center,
            child: Text(
              hours,
              style: headingTextStyle,
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1,
            width: 0,
          ),
        ],
      ),
    );
  }
}
