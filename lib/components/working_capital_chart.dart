import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WorkingCapitalChart extends StatelessWidget {
  const WorkingCapitalChart({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth < 800 ? double.infinity : 800,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Working Capital',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  _legendCircle(Colors.green),
                  const SizedBox(width: 4),
                  const Text('Income'),
                  const SizedBox(width: 16),
                  _legendCircle(Colors.orange),
                  const SizedBox(width: 4),
                  const Text('Expenses'),
                  const SizedBox(width: 16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      children: const [
                        Text('Last 7 days', style: TextStyle(fontSize: 12)),
                        Icon(Icons.keyboard_arrow_down, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (_) =>
                      FlLine(color: Colors.grey.shade200, strokeWidth: 1),
                  drawVerticalLine: false,
                ),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, _) {
                        final day = 14 + value.toInt();
                        return Text('Apr $day',
                            style: const TextStyle(fontSize: 10));
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, _) {
                        return Text(
                          '\$${value ~/ 1000}K',
                          style: const TextStyle(fontSize: 10),
                        );
                      },
                      interval: 2000,
                    ),
                  ),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: 6,
                minY: 0,
                maxY: 10000,
                lineBarsData: [
                  _buildLineBarData(Colors.green, [
                    FlSpot(0, 5000),
                    FlSpot(1, 7000),
                    FlSpot(2, 6000),
                    FlSpot(3, 5900),
                    FlSpot(4, 6100),
                    FlSpot(5, 6700),
                    FlSpot(6, 8000),
                  ]),
                  _buildLineBarData(Colors.orange, [
                    FlSpot(0, 3000),
                    FlSpot(1, 4000),
                    FlSpot(2, 4500),
                    FlSpot(3, 4700),
                    FlSpot(4, 4800),
                    FlSpot(5, 5000),
                    FlSpot(6, 6500),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  LineChartBarData _buildLineBarData(Color color, List<FlSpot> spots) {
    return LineChartBarData(
      spots: spots,
      isCurved: true,
      color: color,
      barWidth: 2,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );
  }

  Widget _legendCircle(Color color) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
