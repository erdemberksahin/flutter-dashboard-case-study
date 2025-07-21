// lib/features/dashboard/widgets/sidebar_menu_item.dart
import 'package:flutter/material.dart';

class SidebarMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const SidebarMenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 44,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFFD0F168) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: isActive ? Colors.black : const Color(0xFF98A2B3),
              size: 20,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isActive ? Colors.black : const Color(0xFF98A2B3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
