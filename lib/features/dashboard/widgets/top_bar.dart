import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black54),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              IconButton(
                icon:
                    const Icon(Icons.notifications_none, color: Colors.black54),
                onPressed: () {},
              ),
              const SizedBox(width: 16),
              const CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xFFE5E7EB),
                backgroundImage:
                    AssetImage('assets/images/avatar_placeholder.png'),
              ),
              const SizedBox(width: 8),
              const Text(
                "Mahfuzul Nabil",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ],
      ),
    );
  }
}
