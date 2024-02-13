import 'package:debouncer_project/extensions/widget_extension.dart';
import 'package:debouncer_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Text(
                'Logo',
              ),
            ).center().paddingTop32,
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ).paddingTop32,
            const Text(
              'Login to continue using this app',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ).paddingTop8,
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ).paddingTop32,
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              controller: emailController,
            ).paddingTop8,
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ).paddingTop32,
            TextFormField(
              obscureText: isPasswordVisible,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: isPasswordVisible
                      ? const Icon(
                          Icons.visibility_off,
                          color: Colors.black45,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Colors.black45,
                        ),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'enter your password',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              controller: passwordController,
            ).paddingTop8,
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: const Text('Forgot password?'),
              ),
            ).paddingTop8,
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ).paddingTop32,
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: const Text(
                "Don't have an account? Signup",
              ),
            ).paddingTop16.center(),
          ],
        ).paddingLR16,
      ),
    );
  }
}
