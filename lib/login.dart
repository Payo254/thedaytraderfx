import 'package:flutter/material.dart';

import 'appBar.dart';
import 'signUp.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void signUpBtn(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupPage()),
      );
    }
    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double fontSize = 24.0;
            if (constraints.maxWidth < 600) {
              // Small screen layout
              fontSize = 20.0;
            }

            return Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // Perform login logic here
                      final email = emailController.text;
                      final password = passwordController.text;

                      // Validate input and perform login action
                      print('Email: $email');
                      print('Password: $password');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text('Login'),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: signUpBtn,
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.green,
                        ),
                        child: Text('Register an account'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
