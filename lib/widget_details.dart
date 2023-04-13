import 'package:flutter/material.dart';

import 'data/models.dart';

class WidgetDetail extends StatefulWidget {
  WidgetDetail({required this.headphone,Key? key}) : super(key: key);
HeadPhone headphone;
  @override
  _WidgetDetailState createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WIRELESS RANGE',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                'UP TO 1M',
                style: TextStyle(
                  /*      color:Colors.white70, */
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CHARGING TIME',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                '3 HOURS',
                style: TextStyle(
                  /*      color:Colors.white70, */
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WARRANTY',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                '1 YEAR',
                style: TextStyle(
                  /*      color:Colors.white70, */
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'START FROM',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              Text(
                '\$ 270',
                style: TextStyle(
                  /*      color:Colors.white70, */
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
