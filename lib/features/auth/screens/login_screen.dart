import 'package:flutter/material.dart';
import 'package:reddify_app/core/constants/constants.dart';

import '../../../core/common/sign_in_button.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset(Constants.logoPath,height: 40,
        )
        ),
        actions: [
          TextButton(onPressed: (){},
              child: const Text('Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
          )
        ],
      ),

      body: Column(
    children: [
          const SizedBox(height: 30,),
          const Text('Dive into anything',
            style: TextStyle(
           fontSize: 24,
         fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
         ),
           ),
         const SizedBox(height: 30,),
         Padding(
          padding: const EdgeInsets.all(8.0),
           child: Image.asset(
             Constants.loginEmote,
            height: 400,),
            ),
          const SizedBox(height: 20,),
          const SignInButton(),
           ],
      ),
    );
  }
}
