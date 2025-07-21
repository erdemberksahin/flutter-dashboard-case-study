import 'package:flutter/material.dart';
import 'dart:ui';

class WalletAndSchedule extends StatelessWidget {
  const WalletAndSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              Icon(Icons.more_horiz, color: Color(0xFF111827)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 330,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 354,
                height: 247,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF111827), Color(0xFF1F2937)],
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Maglo. | Universal Bank',
                            style: TextStyle(color: Colors.white70),
                          ),
                          SizedBox(height: 75),
                          Text(
                            '5495 7381 3759 2321',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Chip ikonu
                    Positioned(
                      top: 60,
                      left: 16,
                      child: Image.asset(
                        'assets/icons/chip.png',
                        width: 28,
                        height: 28,
                      ),
                    ),

                    // NFC ikonu
                    Positioned(
                      top: 60,
                      right: 16,
                      child: Image.asset(
                        'assets/icons/wifi.png',
                        width: 20,
                        height: 20,
                        color: Colors.white70,
                      ),
                    ),

                    // Mastercard ikonu (blurlu gösterim)
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Image.asset(
                            'assets/icons/mastercard.png',
                            width: 40,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 187,
                child: Container(
                  width: 324,
                  height: 190, // alt kısmı uzatıldı
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maglo. | Commercial Bank',
                              style: TextStyle(color: Colors.black87),
                            ),
                            Spacer(),
                            Text(
                              '8595 2548 ****',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                letterSpacing: 2.0,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '09/25',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),

                      // Chip ikonu
                      Positioned(
                        top: 50,
                        left: 16,
                        child: Image.asset(
                          'assets/icons/chip.png',
                          width: 28,
                          height: 28,
                        ),
                      ),

                      // NFC ikonu
                      Positioned(
                        top: 50,
                        right: 16,
                        child: Image.asset(
                          'assets/icons/wifi.png',
                          width: 20,
                          height: 20,
                          color: Colors.black54,
                        ),
                      ),

                      // Visa ikonu
                      Positioned(
                        bottom: 12,
                        right: 12,
                        child: Image.asset(
                          'assets/icons/visa.png',
                          width: 42,
                          height: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Scheduled Transfers',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: const [
              ScheduledTransferItem(
                name: 'Saleh Ahmed',
                date: 'April 28, 2022 at 11:00',
                amount: '-\$435.00',
                avatarPath: 'assets/avatars/1.png',
              ),
              ScheduledTransferItem(
                name: 'Delowar Hossain',
                date: 'April 25, 2022 at 11:00',
                amount: '-\$132.00',
                avatarPath: 'assets/avatars/2.png',
              ),
              ScheduledTransferItem(
                name: 'Moniul Hasan Nayem',
                date: 'April 25, 2022 at 11:00',
                amount: '-\$826.00',
                avatarPath: 'assets/avatars/3.png',
              ),
              ScheduledTransferItem(
                name: 'Dr. Jubed Ahmed',
                date: 'April 16, 2022 at 11:00',
                amount: '-\$435.00',
                avatarPath: 'assets/avatars/4.png',
              ),
              ScheduledTransferItem(
                name: 'AR. Jakir Alp',
                date: 'April 14, 2022 at 11:00',
                amount: '-\$228.00',
                avatarPath: 'assets/avatars/5.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ScheduledTransferItem extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  final String avatarPath;

  const ScheduledTransferItem({
    super.key,
    required this.name,
    required this.date,
    required this.amount,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(avatarPath),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(date,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
