import 'package:flutter/material.dart';
import 'overview_cards.dart';
import 'working_capital_chart.dart';
import 'recent_transactions.dart';

class ResponsiveDashboardContent extends StatelessWidget {
  const ResponsiveDashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 716), // Figma ölçüsü
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                OverviewCards(),
                SizedBox(height: 25),
                WorkingCapitalChart(),
                SizedBox(height: 25),
                RecentTransactions(),
              ],
            ),
          ),
        );
      },
    );
  }
}
