import 'package:flutter/material.dart';
import 'package:thedaytrader/homePage.dart';
import 'contactPage.dart';
import 'login.dart';
// import 'policyPage.dart';
import 'signUp.dart';

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  ResponsiveAppBar();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _ResponsiveAppBarState createState() => _ResponsiveAppBarState();
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    void loginBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }

    void signUpBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupPage()),
      );
    }

    void homeBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }

    void contactBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ContactPage()),
      );
    }

    return AppBar(
      backgroundColor: const Color.fromARGB(255, 41, 2, 2),
      title: Text('The Day Trader'),
      centerTitle: true,
      actions: isSmallScreen
          ? [
              PopupMenuButton<String>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'login',
                    child: TextButton(
                      onPressed: loginBtn,
                      child: Text('Login'),
                    ),
                  ),
                  PopupMenuItem(
                    value: 'signup',
                    child: TextButton(
                      onPressed: signUpBtn,
                      child: Text('Sign Up'),
                    ),
                  ),
                  PopupMenuItem(
                    value: 'home',
                    child: TextButton(
                      onPressed: homeBtn,
                      child: Text('Home'),
                    ),
                  ),
                  PopupMenuItem(
                    value: 'contact',
                    child: TextButton(
                      onPressed: contactBtn,
                      child: Text('Contact Us'),
                    ),
                  ),
                ],
                icon: Icon(Icons.menu),
              ),
            ]
          : [
              IconButton(
                onPressed: loginBtn,
                icon: Icon(Icons.login),
              ),
              IconButton(
                onPressed: signUpBtn,
                icon: Icon(Icons.person_add),
              ),
              IconButton(
                onPressed: homeBtn,
                icon: Icon(Icons.contact_mail),
              ),
              IconButton(
                onPressed: contactBtn,
                icon: Icon(Icons.info),
              ),
            ],
    );
  }
}
