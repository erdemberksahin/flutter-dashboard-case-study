import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 900;

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Row(
        children: [
          // ✅ Sol Panel
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Center(
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Maglo Logo
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/maglo_logo.png',
                              height: 30,
                              width: 30,
                            ),
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
                        const Text(
                          'Create new account',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF101828),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Welcome back! Please enter your details.',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: Color(0xFF667085),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 32),
                        _buildInput(label: 'Full Name'),
                        const SizedBox(height: 20),
                        _buildInput(label: 'Email'),
                        const SizedBox(height: 20),
                        _buildInput(label: 'Password', obscureText: true),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFD0F168),
                              foregroundColor: const Color(0xFF101828),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Image.asset(
                                'assets/images/google_icon.png',
                                width: 16,
                                height: 16,
                              ),
                            ),
                            label: const Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Text(
                                'Sign up with Google',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF344054),
                                ),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFFD0D5DD)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // ✅ SIGN IN ALT YAZISI
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Already have an account? ',
                                style: const TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF667085),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: [
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.baseline,
                                    baseline: TextBaseline.alphabetic,
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          bottom: -8,
                                          left: 0,
                                          right: 0,
                                          child: Image.asset(
                                            'assets/images/signin_underline.png',
                                            height: 6,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        const Text(
                                          'Sign in',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF101828),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // ✅ Sağ Panel - Görsel
          if (isWide)
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/images/promo.png',
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInput({required String label, bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            color: Color(0xFF344054),
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFD0D5DD)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D5DD)),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
