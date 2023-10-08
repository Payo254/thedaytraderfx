import 'package:flutter/material.dart';
// import 'accountPage.dart';

import 'appBar.dart';
import 'bottomSection.dart';
import 'homePage.dart';
import 'testmonialPage.dart';

class MyPlans extends StatelessWidget {
  const MyPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveAppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: LayoutBuilder(builder: (context, constraints) {
              final isSmallScreen = constraints.maxWidth < 600;
              // final showReadMore = isSmallScreen ? true : false;
              return Column(
                children: [
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
                                details: '✓Minimum Deposit \$500\n'
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
            }),
          ),
        ));
  }
}
