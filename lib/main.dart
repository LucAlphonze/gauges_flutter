import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  return runApp(const GaugeApp());
}

/// Represents the GaugeApp class
class GaugeApp extends StatelessWidget {
  const GaugeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radial Gauge Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  /// Creates the instance of MyHomePage
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _getRadialGauge() {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SfRadialGauge(
              title: const GaugeTitle(
                text: 'Tesion Gauge 1',
                textStyle:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Color(0xB9DADADA),
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.6,
                  minimum: 0,
                  maximum: 300,
                  axisLineStyle: const AxisLineStyle(thickness: 30),
                  showTicks: false,
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                        value: 156,
                        enableAnimation: true,
                        needleStartWidth: 0,
                        needleEndWidth: 5,
                        needleColor: Color(0xFF292929),
                        knobStyle: KnobStyle(
                            color: Colors.white,
                            borderColor: Color(0xFF292929),
                            knobRadius: 0.06,
                            borderWidth: 0.04),
                        tailStyle: TailStyle(
                            color: Color(0xFF292929), width: 5, length: 0.15)),
                    RangePointer(
                      value: 156,
                      width: 30,
                      enableAnimation: true,
                      gradient: SweepGradient(colors: <Color>[
                        Color(0xFF66F742),
                        Color(0xFFF7CC42),
                        Color(0xFFF31E1E)
                      ]),
                    )
                  ],
                ),
              ],
            ),
            SfRadialGauge(
              title: const GaugeTitle(
                text: 'Tesion Gauge 2',
                textStyle:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Color(0xB9DADADA),
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.6,
                  minimum: 0,
                  maximum: 300,
                  ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0,
                        endValue: 100,
                        color: Colors.green,
                        startWidth: 5,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 100,
                        endValue: 200,
                        color: Colors.orange,
                        startWidth: 10,
                        endWidth: 15),
                    GaugeRange(
                        startValue: 200,
                        endValue: 300,
                        color: Colors.red,
                        startWidth: 15,
                        endWidth: 20)
                  ],
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                      value: 127.66,
                      enableAnimation: true,
                      animationDuration: 1700,
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                            child: const Text('127.66',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.5)
                  ],
                ),
              ],
            ),
            SfRadialGauge(
              title: const GaugeTitle(
                  text: 'Tesion Gauge 3',
                  textStyle:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              backgroundColor: Color(0xB9DADADA),
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.6,
                  minimum: 0,
                  maximum: 300,
                  ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0,
                        endValue: 100,
                        color: Colors.green,
                        startWidth: 5,
                        endWidth: 10),
                    GaugeRange(
                        startValue: 100,
                        endValue: 200,
                        color: Colors.orange,
                        startWidth: 10,
                        endWidth: 15),
                    GaugeRange(
                        startValue: 200,
                        endValue: 300,
                        color: Colors.red,
                        startWidth: 15,
                        endWidth: 20)
                  ],
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                      value: 230,
                      enableAnimation: true,
                      animationDuration: 1700,
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                            child: const Text('230',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.5)
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SfRadialGauge(
              title: const GaugeTitle(
                  text: 'Corrientes Gauge 1',
                  textStyle:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              backgroundColor: Color(0xB9DADADA),
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.6,
                  minimum: 0,
                  maximum: 100,
                  axisLineStyle: const AxisLineStyle(thickness: 30),
                  showTicks: false,
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                        value: 56,
                        enableAnimation: true,
                        needleStartWidth: 0,
                        needleEndWidth: 5,
                        needleColor: Color(0xFF292929),
                        knobStyle: KnobStyle(
                            color: Colors.white,
                            borderColor: Color(0xFF292929),
                            knobRadius: 0.06,
                            borderWidth: 0.04),
                        tailStyle: TailStyle(
                            color: Color(0xFF292929), width: 5, length: 0.15)),
                    RangePointer(
                      value: 56,
                      width: 30,
                      enableAnimation: true,
                      gradient: SweepGradient(colors: <Color>[
                        Color(0xFF66F742),
                        Color(0xFFF31E1E)
                      ]),
                    )
                  ],
                ),
              ],
            ),
            SfRadialGauge(
              title: const GaugeTitle(
                  text: 'Corrientes Gauge 2',
                  textStyle:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              backgroundColor: Color(0xB9DADADA),
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.6,
                  minimum: 0,
                  maximum: 100,
                  axisLineStyle: const AxisLineStyle(thickness: 30),
                  showTicks: false,
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                        value: 26,
                        enableAnimation: true,
                        needleStartWidth: 0,
                        needleEndWidth: 5,
                        needleColor: Color(0xFF292929),
                        knobStyle: KnobStyle(
                            color: Colors.white,
                            borderColor: Color(0xFF292929),
                            knobRadius: 0.06,
                            borderWidth: 0.04),
                        tailStyle: TailStyle(
                            color: Color(0xFF292929), width: 5, length: 0.15)),
                    RangePointer(
                      value: 26,
                      width: 30,
                      enableAnimation: true,
                      gradient: SweepGradient(colors: <Color>[
                        Color(0xFF66F742),
                        Color(0xFFF31E1E)
                      ]),
                    )
                  ],
                ),
              ],
            ),
            SfRadialGauge(
              title: const GaugeTitle(
                  text: 'Corrientes Gauge 3',
                  textStyle:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              backgroundColor: Color(0xB9DADADA),
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.6,
                  minimum: 0,
                  maximum: 100,
                  axisLineStyle: const AxisLineStyle(thickness: 30),
                  showTicks: false,
                  pointers: const <GaugePointer>[
                    NeedlePointer(
                        value: 86,
                        enableAnimation: true,
                        needleStartWidth: 0,
                        needleEndWidth: 5,
                        needleColor: Color(0xFF292929),
                        knobStyle: KnobStyle(
                            color: Colors.white,
                            borderColor: Color(0xFF292929),
                            knobRadius: 0.06,
                            borderWidth: 0.04),
                        tailStyle: TailStyle(
                            color: Color(0xFF292929), width: 5, length: 0.15)),
                    RangePointer(
                      value: 86,
                      width: 30,
                      enableAnimation: true,
                      gradient: SweepGradient(colors: <Color>[
                        Color(0xFF66F742),
                        Color(0xFFF31E1E)
                      ]),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Syncfusion Flutter Gauge')),
      body: _getRadialGauge(),
      drawer: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Linechart(),
              ),
            );
          },
          child: Text('Historial'),
        ),
      ),
    );
  }
}

class Linechart extends StatefulWidget {
  Linechart({Key? key}) : super(key: key);

  @override
  State<Linechart> createState() => _LinechartState();
}

class _LinechartState extends State<Linechart> {
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter Gauge'),
      ),
      body: Center(
        child: Container(
          child: SfCartesianChart(
            // Enables the tooltip for all the series in chart
            tooltipBehavior: _tooltipBehavior,
            // Initialize category axis
            primaryXAxis: CategoryAxis(),
            series: <ChartSeries>[
              // Initialize line series
              LineSeries<ChartData, String>(
                  // Enables the tooltip for individual series
                  enableTooltip: true,
                  dataSource: [
                    // Bind data source
                    ChartData('Jan', 35),
                    ChartData('Feb', 28),
                    ChartData('Mar', 34),
                    ChartData('Apr', 32),
                    ChartData('May', 40)
                  ],
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ],
          ),
        ),
      ),
    );
  }

  late TooltipBehavior _tooltipBehavior;
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
