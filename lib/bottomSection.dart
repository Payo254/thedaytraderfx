import 'package:flutter/material.dart';

import 'aboutUs.dart';
import 'contactPage.dart';
import 'homePage.dart';
import 'plansPage.dart';
import 'policyPage.dart';

class bottomHomePageSection extends StatelessWidget {
  const bottomHomePageSection({super.key});

  @override
  Widget build(BuildContext context) {
    void privacyBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
      );
    }

    void homeBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }

    void aboutBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AboutUsPage()),
      );
    }

    void planBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyPlans()),
      );
    }

    void contactBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ContactPage()),
      );
    }

    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 41, 2, 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "THE DAY TRADER FX",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              "As TDTFX company You can Invest and earn Big cash through our investment plans. Moreover, we sell trading Signals and We also sell trading Bots.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              "Useful Links",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: homeBtn,
                  child: Text("HOME"),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: aboutBtn,
                  child: Text("ABOUT"),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: planBtn,
                  child: Text("PLAN"),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: contactBtn,
                  child: Text("CONTACT"),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              "Our Services",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: privacyBtn,
                  child: Text("PRIVACY POLICY"),
                ),
                SizedBox(width: 16.0),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              "Contact Us",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Text(
              "phone +23453284054\nemail support@thedaytraderfx.pro\naddress 9 MARK ODION AVENUE OWUTU AGRIC, IKORODU, LAGOS STATE.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              "Copyright © 2023 Day TraderForex All Rights Reserved",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
