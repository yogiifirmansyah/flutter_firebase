import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/custom_text_field.dart';
import 'package:flutter_firebase/widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                Image.asset('assets/images/bg_login.jpg'),

                const SizedBox(height: 16),

                Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Please register to have access for login',
                  style: TextStyle(color: Colors.black45),
                  textAlign: TextAlign.start,
                ),

                const SizedBox(height: 32),
                buildTextField(label: 'Username', icon: Icons.person),

                const SizedBox(height: 16),
                buildTextField(label: 'Email', icon: Icons.email_outlined),

                const SizedBox(height: 16),
                buildTextField(
                  label: 'Password',
                  icon: Icons.lock,
                  obscure: true,
                ),

                const SizedBox(height: 16),
                buildTextField(
                  label: 'Confirm Password',
                  icon: Icons.lock,
                  obscure: true,
                ),

                const SizedBox(height: 24),
                primaryButton(
                  text: 'Sign up',
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
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
