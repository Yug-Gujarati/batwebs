import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/responsive.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class LineChartCard extends StatelessWidget {
  LineChartCard({super.key});

  final List<FlSpot> spots = const [
    FlSpot(1.68, 21.04),
    FlSpot(2.84, 26.23),
    FlSpot(5.19, 19.82),
    FlSpot(6.01, 24.49),
    FlSpot(7.81, 19.82),
    FlSpot(9.49, 23.50),
    FlSpot(12.26, 19.57),
    FlSpot(15.63, 20.90),
    FlSpot(20.39, 39.20),
    FlSpot(23.69, 75.62),
    FlSpot(26.21, 46.58),
    FlSpot(29.87, 42.97),
    FlSpot(32.49, 46.54),
    FlSpot(35.09, 40.72),
    FlSpot(38.74, 43.18),
    FlSpot(41.47, 59.91),
    FlSpot(43.12, 53.18),
    FlSpot(46.30, 90.10),
    FlSpot(47.88, 81.59),
    FlSpot(51.71, 75.53),
    FlSpot(54.21, 78.95),
    FlSpot(55.23, 86.94),
    FlSpot(57.40, 78.98),
    FlSpot(60.49, 74.38),
    FlSpot(64.30, 48.34),
    FlSpot(67.17, 70.74),
    FlSpot(70.35, 75.43),
    FlSpot(73.39, 69.88),
    FlSpot(75.87, 80.04),
    FlSpot(77.32, 74.38),
    FlSpot(81.43, 68.43),
    FlSpot(86.12, 69.45),
    FlSpot(90.06, 78.60),
    FlSpot(94.68, 46.05),
    FlSpot(98.35, 42.80),
    FlSpot(101.25, 53.05),
    FlSpot(103.07, 46.06),
    FlSpot(106.65, 42.31),
    FlSpot(108.20, 32.64),
    FlSpot(110.40, 45.14),
    FlSpot(114.24, 53.27),
    FlSpot(116.60, 42.13),
    FlSpot(118.52, 57.60),
  ];

  final leftTitle = {
    0: '0',
    20: '2K',
    40: '4K',
    60: '6K',
    80: '8K',
    100: '10K'
  };
  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Total Aevenue",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          const Row(
            children: [
                Text(
                "107,843.82",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(width: 5,),
              Text(
                "+ 25.2",
                style: TextStyle(fontSize: 13, color: Colors.green),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: Responsive.isMobile(context) ? 9 / 4 : 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true,
                ),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32,
                      interval: 1,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                space: 10,
                                child: Text(
                                    bottomTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                        fontSize: Responsive.isMobile(context)
                                            ? 9
                                            : 12,
                                        color: Colors.grey[400])),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return leftTitle[value.toInt()] != null
                            ? Text(leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                    fontSize:
                                        Responsive.isMobile(context) ? 9 : 12,
                                    color: Colors.grey[400]))
                            : const SizedBox();
                      },
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                      isCurved: true,
                      curveSmoothness: 0,
                      color: Colors.purple,
                      barWidth: 2.5,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors:[
                           const Color.fromARGB(255, 250, 240, 251).withOpacity(0.1),
                            const Color.fromARGB(255, 245, 222, 248).withOpacity(0.2),
                             const Color.fromARGB(255, 247, 231, 249).withOpacity(0.3),
                            const Color.fromARGB(255, 247, 224, 250).withOpacity(0.4),
                            const Color.fromARGB(255, 242, 214, 245).withOpacity(0.5),
                            const Color.fromARGB(255, 244, 213, 248).withOpacity(0.6),
                            const Color.fromARGB(255, 248, 210, 253).withOpacity(0.7),
                             const Color.fromARGB(255, 239, 179, 246).withOpacity(0.8),
                            const Color.fromARGB(255, 237, 160, 245).withOpacity(0.9),
                            const Color.fromARGB(255, 235, 136, 246).withOpacity(1.0),
                                        ],
                        ),
                        show: true,
                        color: Colors.purple.withOpacity(0.5),
                      ),
                      dotData: FlDotData(show: false),
                      spots: spots)
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
              swapAnimationDuration: const Duration(milliseconds: 250),
            ),
          ),
        ],
      ),
    );
  }
}
