import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<ChartData> _chartData;
  late DataLabelSettings _dataLabelSettings;

  @override
  void initState() {
    _chartData = <ChartData>[
      ChartData(y: 5.250),
      ChartData(y: 7.750),
      ChartData(y: 0.0),
      ChartData(y: 8.275),
      ChartData(y: 9.750),
      ChartData(y: 7.750),
      ChartData(y: 8.275),
      ChartData(y: 6.250),
      ChartData(y: 5.750),
      ChartData(y: 5.250),
      ChartData(y: 23.000),
      ChartData(y: 26.500),
      ChartData(y: 26.500),
      ChartData(y: 27.750),
      ChartData(y: 25.025),
      ChartData(y: 26.500),
      ChartData(y: 28.025),
      ChartData(y: 29.250),
      ChartData(y: 26.750),
      ChartData(y: 27.250),
      ChartData(y: 26.250),
      ChartData(y: 25.250),
      ChartData(y: 34.500),
      ChartData(y: 25.625),
      ChartData(y: 25.500),
      ChartData(y: 26.625),
      ChartData(y: 36.275),
      ChartData(y: 36.250),
      ChartData(y: 26.875),
      ChartData(y: 40.000),
      ChartData(y: 43.000),
      ChartData(y: 46.500),
      ChartData(y: 47.750),
      ChartData(y: 45.025),
      ChartData(y: 56.500),
      ChartData(y: 56.500),
      ChartData(y: 58.025),
      ChartData(y: 59.250),
      ChartData(y: 56.750),
      ChartData(y: 57.250),
      ChartData(y: 46.250),
      ChartData(y: 55.250),
      ChartData(y: 44.500),
      ChartData(y: 45.525),
      ChartData(y: 55.500),
      ChartData(y: 46.625),
      ChartData(y: 46.275),
      ChartData(y: 56.250),
      ChartData(y: 46.875),
      ChartData(y: 43.000),
      ChartData(y: 46.250),
      ChartData(y: 55.250),
      ChartData(y: 44.500),
      ChartData(y: 45.425),
      ChartData(y: 55.500),
      ChartData(y: 56.625),
      ChartData(y: 46.275),
      ChartData(y: 56.250),
      ChartData(y: 46.875),
      ChartData(y: 43.000),
      ChartData(y: 46.250),
      ChartData(y: 55.250),
      ChartData(y: 44.500),
      ChartData(y: 45.425),
      ChartData(y: 55.500),
      ChartData(y: 46.625),
      ChartData(y: 56.275),
      ChartData(y: 46.250),
      ChartData(y: 56.875),
      ChartData(y: 41.000),
      ChartData(y: 63.000),
      ChartData(y: 66.500),
      ChartData(y: 67.750),
      ChartData(y: 65.025),
      ChartData(y: 66.500),
      ChartData(y: 76.500),
      ChartData(y: 78.025),
      ChartData(y: 79.250),
      ChartData(y: 76.750),
      ChartData(y: 77.250),
      ChartData(y: 66.250),
      ChartData(y: 75.250),
      ChartData(y: 74.500),
      ChartData(y: 65.625),
      ChartData(y: 75.500),
      ChartData(y: 76.625),
      ChartData(y: 76.275),
      ChartData(y: 66.250),
      ChartData(y: 66.875),
      ChartData(y: 80.000),
      ChartData(y: 85.250),
      ChartData(y: 87.750),
      ChartData(y: 89.000),
      ChartData(y: 88.275),
      ChartData(y: 89.750),
      ChartData(y: 97.750),
      ChartData(y: 98.275),
      ChartData(y: 96.250),
      ChartData(y: 95.750),
      ChartData(y: 95.250)
    ];
    _dataLabelSettings = const DataLabelSettings(isVisible: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: _buildHistogramChart(),
      ),
    );
  }

  SfCartesianChart _buildHistogramChart() {
    return SfCartesianChart(
      primaryXAxis: const NumericAxis(),
      primaryYAxis: const NumericAxis(),
      series: <CartesianSeries<ChartData, num>>[
        HistogramSeries<ChartData, double>(
          dataSource: _chartData,
          yValueMapper: (ChartData data, int index) => data.y,
          dataLabelSettings: _dataLabelSettings,
          showNormalDistributionCurve: true,
          curveColor: Colors.deepPurple,
          binInterval: 20,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _chartData.clear();
    super.dispose();
  }
}

class ChartData {
  ChartData({required this.y});
  double y;
}
