import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thedaytrader/appBar.dart';

import 'accountPage.dart';
import 'bottomSection.dart';
import 'plansPage.dart';
import 'testmonialPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void plansBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyPlans()),
      );
    }

    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isSmallScreen = constraints.maxWidth < 600;
              final showReadMore = isSmallScreen ? true : false;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Your Sure Way Towards',
                      style: GoogleFonts.robotoSerif(
                        textStyle: TextStyle(
                            fontSize: isSmallScreen ? 36.0 : 48.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 43, 16, 2)),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'FINANCIAL FREEDOM',
                      style: GoogleFonts.robotoSerif(
                        textStyle: TextStyle(
                            fontSize: isSmallScreen ? 36.0 : 48.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 131, 63)),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'A HIGHLY PROFITABLE INVESTMENT COMPANY WITH 8 YEARS OF INCOMPARABLE TRACK RECORD.',
                      style: GoogleFonts.robotoSerif(
                        textStyle: TextStyle(
                            fontSize: isSmallScreen ? 16.0 : 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 43, 16, 2)),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: plansBtn,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 10, 21, 138),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 16.0),
                        textStyle: TextStyle(fontSize: 18.0),
                      ),
                      child: Text('Invest Now'),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Center(
                    child: Column(
                      children: [
                        ResponsiveCard(
                          icon: Icons.account_balance,
                          title: 'Investment Services',
                          description: 'Explore our investment services.',
                        ),
                        ResponsiveCard(
                          icon: Icons.attach_money,
                          title: 'High ROI',
                          description: 'Get high returns on your investments.',
                        ),
                        ResponsiveCard(
                          icon: Icons.people,
                          title: 'Expert Team',
                          description: 'Backed by a team of financial experts.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: isSmallScreen
                        ? Column(
                            children: [
                              AutoSizeText(
                                'The Day Trader FX is the next-gen Trading solutions company that has financial experts at the core who are focused on creating sustainable and profitable Crypto and Forex investment opportunities. ' +
                                    (showReadMore
                                        ? 'Our knowledge team and market analyst, to our financial experts and support staff, we have countless years of experience in the financial market and emerging as a global leader in the market with a Forex and Cryptocurrency trading platform. Company number 1154234 based in Lagos, Nigeria. Our Corporate Headquarters is located here: 9 MARK ODION AVENUE OWUTU AGRIC, IKORODU, LAGOS STATE. We offer multiple possibilities in the Financial sector with a key focus on the Forex and Crypto market. Our company is constantly evolving, as it improves its marketing components and creates new investment proposals. All this makes Forex Binary an industry leader and to be able to provide a large set of financial expertise and also adapt to the constantly changing market conditions. '
                                        : ''),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                minFontSize: 14.0,
                                maxLines: isSmallScreen
                                    ? 5
                                    : 999, // Show 5 lines or all lines
                                textAlign: TextAlign.left,
                              ),
                              showReadMore
                                  ? InkWell(
                                      onTap: () {
                                        // Handle the "Read More" link press
                                      },
                                      child: Text(
                                        'Read More',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'The Day Trader FX is the next-gen Trading solutions company that has financial experts at the core who are focused on creating sustainable and profitable Crypto and Forex investment opportunities.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                minFontSize: 14.0,
                                maxLines:
                                    999, // Show all lines on large screens
                                textAlign: TextAlign.left,
                              ),
                              AutoSizeText(
                                'Our knowledge team and market analyst, to our financial experts and support staff, we have countless years of experience in the financial market and emerging as a global leader in the market with a Forex and Cryptocurrency trading platform. Company number 1154234 based in Lagos, Nigeria. Our Corporate Headquarters is located here: 9 MARK ODION AVENUE OWUTU AGRIC, IKORODU, LAGOS STATE. We offer multiple possibilities in the Financial sector with a key focus on the Forex and Crypto market. Our company is constantly evolving, as it improves its marketing components and creates new investment proposals. All this makes Forex Binary an industry leader and to be able to provide a large set of financial expertise and also adapt to the constantly changing market conditions.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                minFontSize: 14.0,
                                maxLines:
                                    999, // Show all lines on large screens
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Choose How You Want to Invest with Us',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  isSmallScreen
                      ? Column(
                          children: [
                            Center(
                              child: InvestmentPlanCard(
                                title: '12hrs Plan',
                                details: '✓Minimum Deposit \$100\n'
                                    '✓Maximum Deposit \$1500\n'
                                    '✓\$550 Minimum Return\n'
                                    '✓\$4500 Maximum Return\n'
                                    '✓\$125 Gift Bonus',
                              ),
                            ),
                            Center(
                              child: InvestmentPlanCard(
                                title: '24hrs Plan',
                                details: '✓Minimum Deposit \$200\n'
                                    '✓Maximum Deposit \$2500\n'
                                    '✓\$2000 Minimum Return\n'
                                    '✓\$10000 Maximum Return\n'
                                    '✓\$200 Gift Bonus',
                              ),
                            ),
                            Center(
                              child: InvestmentPlanCard(
                                title: '7 Days Plan',
                                details: '✓Minimum Deposit \$1000\n'
                                    '✓Maximum Deposit \$5000\n'
                                    '✓\$5000 Minimum Return\n'
                                    '✓\$25000 Maximum Return\n'
                                    '✓\$500 Gift Bonus',
                              ),
                            ),
                            Center(
                              child: InvestmentPlanCard(
                                title: '30 Days Plan',
                                details: '✓Minimum Deposit \$2500\n'
                                    '✓Maximum Deposit \$10000\n'
                                    '✓\$15000 Minimum Return\n'
                                    '✓\$60000 Maximum Return\n'
                                    '✓\$1000 Gift Bonus',
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InvestmentPlanCard(
                                title: '12hrs Plan',
                                details: '✓Minimum Deposit \$100\n'
                                    '✓Maximum Deposit \$1500\n'
                                    '✓\$550 Minimum Return\n'
                                    '✓\$4500 Maximum Return\n'
                                    '✓\$125 Gift Bonus',
                              ),
                            ),
                            Center(
                              child: InvestmentPlanCard(
                                title: '24hrs Plan',
                                details: '✓Minimum Deposit \$200\n'
                                    '✓Maximum Deposit \$2500\n'
                                    '✓\$2000 Minimum Return\n'
                                    '✓\$10000 Maximum Return\n'
                                    '✓\$200 Gift Bonus',
                              ),
                            ),
                            Center(
                              child: InvestmentPlanCard(
                                title: '7 Days Plan',
                                details: '✓Minimum Deposit \$1000\n'
                                    '✓Maximum Deposit \$5000\n'
                                    '✓\$5000 Minimum Return\n'
                                    '✓\$25000 Maximum Return\n'
                                    '✓\$500 Gift Bonus',
                              ),
                            ),
                            Center(
                              child: InvestmentPlanCard(
                                title: '30 Days Plan',
                                details: '✓Minimum Deposit \$2500\n'
                                    '✓Maximum Deposit \$10000\n'
                                    '✓\$15000 Minimum Return\n'
                                    '✓\$60000 Maximum Return\n'
                                    '✓\$1000 Gift Bonus',
                              ),
                            ),
                          ],
                        ),
                  SizedBox(
                    height: 30,
                  ),
                  testimonialSlider(),
                  SizedBox(
                    height: 30,
                  ),
                  bottomHomePageSection(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class InvestmentPlanCard extends StatelessWidget {
  final String title;
  final String details;

  InvestmentPlanCard({required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    void investBtn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccountPage()),
      );
    }

    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(16.0),
      child: SizedBox(
        width: 300.0, // Adjust the card width as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                details.replaceAll('\$', r'$'), // Escape dollar signs
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: investBtn,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 10, 21, 138),
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                textStyle: TextStyle(fontSize: 18.0),
              ),
              child: Text('Invest Now'),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  ResponsiveCard(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(16.0),
      child: SizedBox(
        width: 300.0, // Adjust the card width as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0, color: Colors.amber),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
