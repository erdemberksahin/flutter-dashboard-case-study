import 'package:flutter/material.dart';

class OverviewCards extends StatelessWidget {
  const OverviewCards({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 750;

        return isWide
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  _InfoCard(
                    iconPath: 'assets/icons/money.png',
                    title: 'Total balance',
                    amount: '\$5240.21',
                    backgroundColor: Color(0xFF2B2F34),
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 25),
                  _InfoCard(
                    iconPath: 'assets/icons/spending.png',
                    title: 'Total spending',
                    amount: '\$250.80',
                    backgroundColor: Color(0xFFF2F3F5),
                    textColor: Colors.black,
                  ),
                  SizedBox(width: 25),
                  _InfoCard(
                    iconPath: 'assets/icons/saved.png',
                    title: 'Total saved',
                    amount: '\$550.25',
                    backgroundColor: Color(0xFFF2F3F5),
                    textColor: Colors.black,
                  ),
                ],
              )
            : Wrap(
                spacing: 20,
                runSpacing: 16,
                children: const [
                  _InfoCard(
                    iconPath: 'assets/icons/money.png',
                    title: 'Total balance',
                    amount: '\$5240.21',
                    backgroundColor: Color(0xFF2B2F34),
                    textColor: Colors.white,
                  ),
                  _InfoCard(
                    iconPath: 'assets/icons/spending.png',
                    title: 'Total spending',
                    amount: '\$250.80',
                    backgroundColor: Color(0xFFF2F3F5),
                    textColor: Colors.black,
                  ),
                  _InfoCard(
                    iconPath: 'assets/icons/saved.png',
                    title: 'Total saved',
                    amount: '\$550.25',
                    backgroundColor: Color(0xFFF2F3F5),
                    textColor: Colors.black,
                  ),
                ],
              );
      },
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final String amount;
  final Color backgroundColor;
  final Color textColor;

  const _InfoCard({
    required this.iconPath,
    required this.title,
    required this.amount,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 224, // Figma'daki genişlik: ~224-240 arası
      height: 105,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor == Colors.white
                  ? const Color(0xFFE6F0F5)
                  : Colors.white.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor.withOpacity(0.7),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                amount,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
