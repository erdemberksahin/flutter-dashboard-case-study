import 'package:flutter/material.dart';

class WalletCardSection extends StatelessWidget {
  const WalletCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Wallet",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 12),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 344,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maglo. | Universal Bank",
                    style: TextStyle(color: Colors.white70),
                  ),
                  Spacer(),
                  Text(
                    "5495 7381 3759 2321",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -80,
              left: 10,
              child: Container(
                width: 324,
                height: 172,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Maglo. | Commercial Bank",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Spacer(),
                    Text(
                      "8595 2548 ****",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text("09/25"),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
