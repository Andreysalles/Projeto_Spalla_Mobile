/// Package import
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// Chart import

class ChartFinanceiro extends StatelessWidget {
  final List<ChartData> chartdata = [
    ChartData('Jan', 100, 50),
    ChartData('Fev', 60, 30),
    ChartData('Mar', 50, 90),
  ];

  ChartFinanceiro({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      margin: EdgeInsets.all(0),
      primaryXAxis: CategoryAxis(
        labelStyle: TextStyle(color: Colors.white),
      ),
      primaryYAxis: NumericAxis(labelFormat: '{value}K'),
      series: [
        ColumnSeries(
          color: Color.fromARGB(255, 146, 230, 148),
          dataSource: chartdata,
          xValueMapper: (ChartData ch, _) => ch.x1,
          yValueMapper: (ChartData ch, _) => ch.y1,
        ),
        ColumnSeries(
          color: Color.fromARGB(255, 184, 86, 86),
          dataSource: chartdata,
          xValueMapper: (ChartData ch, _) => ch.x1,
          yValueMapper: (ChartData ch, _) => ch.y2,
        )
      ],
    );
  }
}

class ChartData {
  final String x1;
  final int y1;
  final int y2;

  ChartData(
    this.x1,
    this.y1,
    this.y2,
  );
}
