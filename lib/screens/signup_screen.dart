import 'dart:async';

import 'package:debouncer_project/extensions/string_extension.dart';
import 'package:debouncer_project/extensions/widget_extension.dart';
import 'package:debouncer_project/screens/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Timer? debounce;

  bool isPasswordVisible = true;
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.clear();
    usernameController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        // autovalidateMode: AutovalidateMode.,
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Text(
                'Logo',
              ),
            ).center().paddingTop32,
            const Text(
              'Signup',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ).paddingTop32,
            const Text(
              'Create an account with us',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ).paddingTop8,
            const Text(
              'Username',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ).paddingTop32,
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'enter your username',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              controller: usernameController,
              validator: (value) {
                if (value == null || value.length < 2) {
                  return "username should be more than 2 characters";
                } else {
                  return null;
                }
              },
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
              validator: (value) {
                if (value == null) {
                  return 'Please enter an email address';
                } else if (!value.isEmailValid()) {
                  return 'Please enter a valid email address';
                } else {
                  return null;
                }

                //  if(debounce?.isActive ?? false) debounce?.cancel();
                //  debounce = Timer(const Duration(milliseconds: 300), (String value){

                //  });
              },
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
              validator: (value) {
                if (value == null) {
                  return 'Please enter your password';
                } else if (!value.isPasswordValid()) {
                  return 'Paasword should contain an uppercase letter, a lowercase letter, a number \nand at least 8 characters long';
                } else {
                  return null;
                }
              },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginPage(),
                        ));
                  }
                },
                child: const Text('Create account'),
              ),
            ).paddingTop32,
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginPage(),
                  ),
                );
              },
              child: const Text(
                "Have an account already? Login",
              ),
            ).paddingTop16.center(),
          ],
        ).paddingLR16,
      ),
    );
  }
}
