import 'package:flutter/material.dart';
import 'package:smart_water_tank/data/water_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart'
    show SfCartesianChart, LineSeries, CategoryAxis;

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <LineSeries<WaterData, String>>[
            LineSeries<WaterData, String>(
              // Bind data source
              dataSource: <WaterData>[
                WaterData('Jan', 35),
                WaterData('Feb', 28),
                WaterData('Mar', 34),
                WaterData('Apr', 32),
                WaterData('May', 40)
              ],
              xValueMapper: (WaterData data, _) => data.waterLevelPercent,
              yValueMapper: (WaterData data, _) => data.waterlevelFt,
            ),
            LineSeries<WaterData, String>(
              // Bind data source
              dataSource: <WaterData>[
                WaterData('Jan', 50),
                WaterData('Feb', 5),
                WaterData('Mar', 12),
                WaterData('Apr', 32),
                WaterData('May', 43)
              ],
              xValueMapper: (WaterData data, _) => data.waterLevelPercent,
              yValueMapper: (WaterData data, _) => data.waterlevelFt,
            )
          ])
    ]);
  }
}
