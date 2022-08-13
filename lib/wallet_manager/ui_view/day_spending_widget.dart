import 'package:flutter/material.dart';
import 'package:wallet_manager/wallet_manager/ui_view/animated_progress_bar.dart';

class DaySpandingWidget extends StatelessWidget {
  final String day;
  final double percentage;
  const DaySpandingWidget(
      {Key? key, required this.day, required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5,
                      offset: Offset(2, 2))
                ]),
            height: 100,
            width: 20,
            child: FAProgressBar(
              direction: Axis.vertical,
              currentValue: percentage.toInt(),
              borderRadius: BorderRadius.circular(30),
              animatedDuration: const Duration(seconds: 1),
              backgroundColor: Colors.blueGrey,
              progressColor: Colors.blue,
              verticalDirection: VerticalDirection.up,
            ),
          ),
          Text(day.toUpperCase())
        ],
      ),
    );
  }
}
