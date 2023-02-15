import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../styles/color_schema.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Restaurante', 12),
      _ChartData('Jogos', 15),
      _ChartData('TV', 30),
      _ChartData('Mercado', 6.4),
      _ChartData('Outros', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.black54,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                'Dashboard',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorSchema.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0.0, 0.3),
                          blurRadius: 15.0)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                '2800,00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Avelilable Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              )
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.show_chart),
                            onPressed: () {},
                            color: Colors.white,
                            iconSize: 30.0,
                          )
                        ],
                      ),
                    ),
                    SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis:
                          NumericAxis(minimum: 0, maximum: 40, interval: 10),
                      tooltipBehavior: _tooltip,
                      series: <ChartSeries<_ChartData, String>>[
                        BarSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          name: 'Gold',
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              child: Text(
                'Recent Activity',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.purple.withOpacity(0.1),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'JO',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Load Actinity',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Sent Money',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          '- 240.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.orange.withOpacity(0.1),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'MA',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Load Actinity',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Request Money',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          ' 360.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
