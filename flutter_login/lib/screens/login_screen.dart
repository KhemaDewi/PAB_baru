import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //todo: 1.logo aplikasi
              SizedBox(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'images/android.png',
                      fit: BoxFit.cover,
                    ),
                  )),
              //todo: 2. textfield email dan pass
              const SizedBox(height: 16),
              //textfielad email
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email'),

              ),
              const SizedBox(height: 16),
              //textfield password
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
                obscureText: true,
              )
              //todo: 3.tombol login
            ],
          ),
        ),
      ),
    );
  }
}
