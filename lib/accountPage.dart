import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'bottomSection.dart';
import 'bridgeClass.dart';
import 'homePage.dart';
import 'testmonialPage.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountBalancePageState createState() => _AccountBalancePageState();
}

class _AccountBalancePageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final bridgeClass = Provider.of<BridgeClass>(context);

    void depositBtn() {
      Provider.of<BridgeClass>(context, listen: false).setPage(ButtonAlerts());
    }

    withdrawBtn() {
      Provider.of<BridgeClass>(context, listen: false).setPage(Withdraw());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Account Details'),
        backgroundColor: const Color.fromARGB(255, 41, 2, 2),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 600;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: ListTile(
                  title: Text(
                    'Account Balance',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    '\$0.0 USD',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: const Color.fromARGB(255, 15, 150, 20),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 125,
                    child: ElevatedButton(
                      onPressed: depositBtn,
                      child: Text('Deposit'),
                    ),
                  ),
                  Container(
                    width: 125,
                    child: ElevatedButton(
                      onPressed: withdrawBtn,
                      child: Text('Withdraw'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              bridgeClass.currentPage,
              // ButtonAlerts(),

              SizedBox(
                height: 16,
              ),
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
        }),
      ),
    );
  }
}

class ButtonAlerts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              showAlert(
                  context,
                  'Payment in Uganda',
                  'Dial *185# \n*Select option : Send Money· \n*Select option : International Transfer (Kenya)·\n*Enter the Receivers Number format +2547*******· \n*Enter your Amount in UGX shillings. \n*Enter your Airtel Money PIN \n*Agent Name:Josonta Onger \n*Agent Number:+254702175957',
                  '+254702175957');
            },
            child: Text('AIRTEL MONEY'),
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              showAlert(
                  context,
                  'How to Deposit with MTN',
                  ' Dial *165# \n* Select Send Money (1) \n* Select International Transfer (3) \n* Select Safaricom M-Pesa (1) \n* Enter the recipient Number in format 254XXX \nAgent Name: Josonta Onger \nAgent Number: +254702175957',
                  '+254702175957');
            },
            child: Text('MTN PAYMENT'),
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              showAlert(
                  context,
                  'How to Deposit With M-PESA',
                  'Go to your sim toolkit \n* Select Send Money then enter phone number \n* Input the agent number provided below \n* Input the amount you want to deposit in Ksh \n* Then your PIN and complete the payment \n* Agent Name: Josonta Onger \n* Agent Number:+254702175957',
                  '+254702175957');
            },
            child: Text('M-PESA KENYA'),
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              showAlert(
                  context,
                  'How to Deposit Through CBE',
                  'Deposit through CBE Bank APP  \n*If you do not have Bank App, visit the bank for Deposit  \n*Reason: TDT Investment \n*Recipient Name: HASSAN EDIN \n*Account Number: 1000415176809',
                  '1000415176809');
            },
            child: Text('Commercial Bank Ethiopia'),
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              showAlert(
                  context,
                  'Deposit USDT',
                  'Network \nBNB Smart Chain (BEP20)',
                  '0xf70e778e72755574857f14c7c2bc245772de7dd1');
            },
            child: Text('DEPOSIT CRYPTO'),
          ),
        ),
      ],
    );
  }

  void showAlert(
      BuildContext context, String title, String message, String address) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Container(
            height: 300,
            child: Column(
              children: [
                Text(message),
                SizedBox(
                  height: 8,
                ),
                Text('CLICK BELOW TO COPY'),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: address)).then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Successfully copied to clipboard")));
                    });
                  },
                  child: Text(
                    address,
                    style: TextStyle(
                      color: Color.fromARGB(255, 41, 8, 232),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class Withdraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Select Withdrawal Method',
        border: OutlineInputBorder(),
      ),
      items: [
        'Airtel Money',
        'M-PESA KENYA',
        'Commercial Bank',
        'MTN',
        'CRYPTO',
      ].map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
      onChanged: (selectedMethod) {
        _showWithdrawDetailsDialog(context, selectedMethod.toString());
      },
    );
  }

  void _showWithdrawDetailsDialog(BuildContext context, String selectedMethod) {
    String hint1 = '';
    String hint2 = '';

    switch (selectedMethod) {
      case 'Airtel Money':
        hint1 = '256...';
        hint2 = 'UGX';
        break;
      case 'MTN':
        hint1 = '256...';
        hint2 = 'UGX';
        break;
      case 'M-PESA KENYA':
        hint1 = '254...';
        hint2 = 'ksh';
        break;
      case 'Commercial Bank':
        hint1 = 'Enter account number';
        hint2 = 'ETB';
        break;
      case 'CRYPTO':
        hint1 = 'Enter wallet address';
        hint2 = 'USDT';
        break;
      default:
        hint1 = '';
        hint2 = '';
        break;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Withdraw Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: hint1,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: hint2,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Perform withdrawal logic here
                Navigator.of(context).pop();
              },
              child: Text('Withdraw'),
            ),
          ],
        );
      },
    );
  }
}
