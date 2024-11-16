import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:job_assignment/app/config/app_assets.dart';
import 'package:job_assignment/app/config/app_colors.dart';

import '../../../core/widgets/global_button.dart';
import '../../../core/widgets/text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset(AppAssets.registerBg).image,
                fit: BoxFit.cover)),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: size.width * 0.85,
                // height: size.height * 0.6,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Spiral',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Email TextField
                    GlobalTextFormField(
                      hintText: 'John@gmail.com',
                      controller: TextEditingController(),
                      titleText: 'Email',
                    ),
                    const SizedBox(height: 8),
                    GlobalTextFormField(
                      hintText: 'Password',
                      controller: TextEditingController(),
                      titleText: 'Password',
                      // suffixIcon: const Icon(Icons.visibility_off_outlined ),
                    ),
                    const SizedBox(height: 16),
                    // Sign in button
                    GlobalButton(
                      backgroundColor: AppColors.darkBlue,
                      onPressed: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'or choose',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Alternative Login Buttons
                    GlobalButton(
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fingerprint, color: AppColors.darkBlue),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Sign in With Passkey',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.darkBlue),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 20),

                    // Signup text
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: const Text(
                    //     "Don't have an account yet? Register for free",
                    //     style: TextStyle(
                    //       color: Colors.blueAccent,
                    //       decoration: TextDecoration.underline,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
