import 'package:flutter/material.dart';
import '../../../components/responsive_dashboard_content.dart';
import '../widgets/top_bar.dart';
import '../widgets/sidebar.dart';
import '/components/wallet_and_schedule.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: Row(
          children: [
            const Sidebar(),

            /// Ana içerik
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1250),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final isWide = constraints.maxWidth > 900;

                              return Flex(
                                direction:
                                    isWide ? Axis.horizontal : Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        ResponsiveDashboardContent(),
                                      ],
                                    ),
                                  ),

                                  /// Boşluk
                                  if (isWide) const SizedBox(width: 30),

                                  if (isWide)
                                    Padding(
                                      padding: EdgeInsets.only(top: 16),
                                      child: SizedBox(
                                        width: 344,
                                        child: WalletAndSchedule(),
                                      ),
                                    )
                                  else
                                    WalletAndSchedule(),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
