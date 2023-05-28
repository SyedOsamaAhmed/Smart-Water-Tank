import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart'
    show SplineAreaSeries, SfCartesianChart, CategoryAxis, ChartSeries;
import '../../data/chart_data.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData("Jan", 10.53),
      ChartData("Feb", 9.5),
      ChartData("Mar", 10),
      ChartData("Apr", 9.4),
      ChartData("May", 5.8),
      ChartData("June", 4.9),
      ChartData("July", 4.5),
    ];
    final List<ChartData> chartData2 = [
      ChartData("Jan", 8.53),
      ChartData("Feb", 6.5),
      ChartData("Mar", 6.8),
      ChartData("Apr", 7.4),
      ChartData("May", 3.8),
      ChartData("June", 3.0),
      ChartData("July", 4.1),
    ];
    return Column(children: [
      SfCartesianChart(
          primaryXAxis: CategoryAxis(borderColor: Colors.blue),
          series: <ChartSeries>[
            SplineAreaSeries<ChartData, String>(
              opacity: 0.6,
              borderWidth: 4.0,
              color: const Color(0xFF00E396),
              dataSource: chartData2,
              borderColor: Colors.green,
              xValueMapper: (ChartData data, _) => data.month,
              yValueMapper: (ChartData data, _) => data.level,

              //Bind the y-axis to secondary y-axis.
            ),
            SplineAreaSeries<ChartData, String>(
              opacity: 0.4,
              borderWidth: 4.0,
              color: const Color(0xFF008FFB),
              dataSource: chartData,
              borderColor: Colors.blue,
              xValueMapper: (ChartData data, _) => data.month,
              yValueMapper: (ChartData data, _) => data.level,
            ),
          ]),
    ]);
  }
}
