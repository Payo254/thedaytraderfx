import 'package:flutter/material.dart';
import 'dart:math';

import 'appBar.dart';
import 'bottomSection.dart';
import 'testmonialPage.dart';

class AboutUsPage extends StatelessWidget {
  // Generate a random 8-digit figure with a dollar sign
  String generateRandomAmount() {
    final random = Random();
    final amount = random.nextInt(90000000) + 10000000;
    return '\$$amount';
  }

  // Generate a random 5-digit figure
  String generateRandomNumber() {
    final random = Random();
    final number = random.nextInt(90000) + 10000;
    return number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Know more About Us",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "The Beginning Of Greatness.",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "The Day Trader LTD is an investment company that focuses on generating profits by leveraging the volatility of Indices, Crypto, Derivatives, and other money markets. We strive to provide our clients with excellent returns on their investments.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "INVESTORS HISTORY",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Take a look at our latest stats",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.attach_money, size: 40.0),
                            SizedBox(height: 8.0),
                            Text(
                              "Total Deposit",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              generateRandomAmount(),
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.people, size: 40.0),
                            SizedBox(height: 8.0),
                            Text(
                              "Total Members",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              generateRandomNumber(),
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.account_balance_wallet, size: 40.0),
                            SizedBox(height: 8.0),
                            Text(
                              "Total Accounts",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              generateRandomNumber(),
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.money_off, size: 40.0),
                            SizedBox(height: 8.0),
                            Text(
                              "Total Withdraw",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              generateRandomAmount(),
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                testimonialSlider(),
                SizedBox(
                  height: 20,
                ),
                bottomHomePageSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
