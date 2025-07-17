import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/login_screen.dart';
import 'package:flutter_firebase/screens/register_screen.dart';
import 'package:flutter_firebase/widgets/outline_button.dart';
import 'package:flutter_firebase/widgets/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/bg_welcome.jpg'),

              const SizedBox(height: 16),

              Text(
                'Hello',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Welcome to Flutter Firebase Application, where you use Firebase as a Backend',
                style: TextStyle(color: Colors.black45),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 32),

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

              const SizedBox(height: 8),
              outlineButton(
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
    );
  }
}
