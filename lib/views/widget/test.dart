import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart'
    show
        SplineAreaSeries,
        SfCartesianChart,
        CategoryAxis,
        NumericAxis,
        ChartSeries;
import '../../data/chart_data.dart';

class Graph_ extends StatelessWidget {
  const Graph_({super.key});

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
      ChartData("Jan", 1.53),
      ChartData("Feb", 9.5),
      ChartData("Mar", 3.23),
      ChartData("Apr", 9.5),
      ChartData("May", 7.8),
      ChartData("June", 4.9),
      ChartData("July", 9.5),
    ];
    return Column(children: [
      SfCartesianChart(
          primaryXAxis: CategoryAxis(borderColor: Colors.blue),
          axes: [
            NumericAxis(
              name: 'yAxis',
              opposedPosition: true,
            ),
          ],
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
                yAxisName: 'yAxis'),
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
