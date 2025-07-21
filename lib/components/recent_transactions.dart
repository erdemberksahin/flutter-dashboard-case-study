import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF5F5F5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Başlık
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recent Transaction",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF22C55E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          /// Tablo başlığı
          Row(
            children: const [
              Expanded(
                flex: 3,
                child: Text(
                  "NAME/BUSINESS",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "TYPE",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "AMOUNT",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "DATE",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          /// Satırlar
          _buildTransactionRow(
            logoPath: 'assets/icons/apple.png',
            name: 'Iphone 13 Pro MAX',
            description: 'Apple Inc',
            type: 'Mobile',
            amount: '\$420.84',
            date: '14 Apr 2022',
          ),
          _buildTransactionRow(
            logoPath: 'assets/icons/netflix.png',
            name: 'Netflix Subscription',
            description: 'Netflix',
            type: 'Entertainment',
            amount: '\$100.00',
            date: '05 Apr 2022',
          ),
          _buildTransactionRow(
            logoPath: 'assets/icons/figma.png',
            name: 'Figma Subscription',
            description: 'Figma Inc',
            type: 'Software',
            amount: '\$244.20',
            date: '02 Apr 2022',
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionRow({
    required String logoPath,
    required String name,
    required String description,
    required String type,
    required String amount,
    required String date,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          // NAME + BUSINESS
          Expanded(
            flex: 3,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(logoPath),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // TYPE
          Expanded(
            flex: 2,
            child: Text(
              type,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),

          // AMOUNT
          Expanded(
            flex: 2,
            child: Text(
              amount,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),

          // DATE
          Expanded(
            flex: 2,
            child: Text(
              date,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
