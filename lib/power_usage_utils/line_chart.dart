import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// Class for the power usage line chart
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
          // X-axis configuration
          primaryXAxis: CategoryAxis(
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
          // Y-axis configuration
          primaryYAxis: NumericAxis(
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
          // Line series configuration
          series: <LineSeries<ChartData, String>>[
            LineSeries<ChartData, String>(
              // Data source
              dataSource: data,
              // X-value mapping
              xValueMapper: (ChartData power, _) => power.day,
              // Y-value mapping
              yValueMapper: (ChartData power, _) => power.powerUsage,
              // Line color
              color: Colors.blue,
              // Line width
              width: 2,
            ),
          ],
        ),
      ),
    );
  }
}

// Class for chart data
class ChartData {
  final String day;
  final double powerUsage;

  ChartData(this.day, this.powerUsage);
}
