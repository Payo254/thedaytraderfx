import 'package:flutter/material.dart';
import 'appBar.dart';
import 'login.dart';
import 'package:firebase_database/firebase_database.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> setDataRtdb() async {
    final phone = phoneController.text;
    final email = emailController.text;
    final firstName = firstNameController.text;
    final lastName = lastNameController.text;
    final password = passwordController.text;

    DatabaseReference ref = FirebaseDatabase.instance.ref("users/${phone}");

    await ref.set({
      "name": "${firstName} ${lastName} ",
      "email": "${email}",
      "phone": "${phone}",
      "password": "$password",
      "balance": "0.0"
    });
  }

  @override
  Widget build(BuildContext context) {
    void loginBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }

    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                width: constraints.maxWidth >= 600 ? 600 : null,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Register an Account',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: firstNameController,
                            decoration:
                                InputDecoration(labelText: 'First Name'),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextFormField(
                            controller: lastNameController,
                            decoration: InputDecoration(labelText: 'Last Name'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(labelText: 'Phone'),
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      children: [
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          controller: confirmPasswordController,
                          decoration:
                              InputDecoration(labelText: 'Confirm Password'),
                          obscureText: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        // Perform signup logic here
                        final password = passwordController.text;
                        final confirmPassword = confirmPasswordController.text;

                        // Validate input and perform signup action
                        if (password == confirmPassword) {
                          // Passwords match, perform signup action
                          setDataRtdb();
                        } else {
                          // Passwords do not match, show error message
                          print('Password does not match');
                        }
                      },
                      child: Text('Sign Up'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                          onPressed: loginBtn,
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.green,
                          ),
                          child: Text('Login to Your Account'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
