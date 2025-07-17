import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/custom_text_field.dart';
import 'package:flutter_firebase/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/bg_login.jpg',
                  // frameBuilder:
                  //     (context, child, frame, wasSynchronouslyLoaded) {
                  //       if (wasSynchronouslyLoaded) return child;
                  //       return AnimatedOpacity(
                  //         opacity: frame == null ? 0 : 1,
                  //         duration: const Duration(milliseconds: 500),
                  //         child: child,
                  //       );
                  //     },
                ),

                const SizedBox(height: 16),

                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Please login to continue',
                  style: TextStyle(color: Colors.black45),
                  textAlign: TextAlign.start,
                ),

                const SizedBox(height: 32),
                buildTextField(label: 'Username', icon: Icons.person),

                const SizedBox(height: 16),
                buildTextField(
                  label: 'Password',
                  icon: Icons.lock,
                  obscure: true,
                ),

                const SizedBox(height: 24),
                primaryButton(
                  text: 'Login',
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
