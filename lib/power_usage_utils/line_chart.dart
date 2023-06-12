import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PowerUsageLineChart extends StatelessWidget {
  final List<ChartData> data;

  PowerUsageLineChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: double.infinity,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
          primaryYAxis: NumericAxis(
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
          series: <LineSeries<ChartData, String>>[
            LineSeries<ChartData, String>(
              dataSource: data,
              xValueMapper: (ChartData power, _) => power.day,
              yValueMapper: (ChartData power, _) => power.powerUsage,
              color: Colors.blue,
              width: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String day;
  final double powerUsage;

  ChartData(this.day, this.powerUsage);
}
