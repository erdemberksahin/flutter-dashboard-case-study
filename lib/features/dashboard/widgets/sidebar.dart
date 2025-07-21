import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      color: const Color(0xFFFAFAFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Logo
          Row(
            children: [
              Image.asset('assets/images/maglo_logo.png',
                  width: 24, height: 24),
              const SizedBox(width: 8),
              const Text(
                'Maglo.',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF101828),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),

          // ✅ Menü Listesi
          _SidebarItem(
            label: 'Dashboard',
            iconPath: 'assets/icons/dashboard_icon.png',
            isActive: true,
          ),
          _SidebarItem(
            label: 'Transactions',
            iconPath: 'assets/icons/transactions_icon.png',
          ),
          _SidebarItem(
            label: 'Invoices',
            iconPath: 'assets/icons/invoices_icon.png',
          ),
          _SidebarItem(
            label: 'My Wallets',
            iconPath: 'assets/icons/wallets_icon.png',
          ),
          _SidebarItem(
            label: 'Settings',
            iconPath: 'assets/icons/settings_icon.png',
          ),

          const Spacer(),

          // ✅ Yardım ve Logout
          _SidebarItem(
            label: 'Help',
            iconPath: 'assets/icons/help_icon.png',
          ),
          _SidebarItem(
            label: 'Logout',
            iconPath: 'assets/icons/logout_icon.png',
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool isActive;

  const _SidebarItem({
    required this.label,
    required this.iconPath,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: isActive
          ? BoxDecoration(
              color: const Color(0xFFD0F168),
              borderRadius: BorderRadius.circular(8),
            )
          : null,
      child: ListTile(
        leading: Image.asset(iconPath, width: 20, height: 20),
        title: Text(
          label,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isActive ? const Color(0xFF101828) : const Color(0xFF98A2B3),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        dense: true,
      ),
    );
  }
}
