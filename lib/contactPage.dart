import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appBar.dart';
import 'bottomSection.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _urlChannel = Uri.parse('https://t.me/thedaytrader296');
    final Uri _urlAdmin = Uri.parse('https://t.me/JEFFREY_BENS');
    Future<void> _launchChannel() async {
      if (!await launchUrl(
        _urlChannel,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $_urlChannel';
      }
    }

    Future<void> _launchAdmin() async {
      if (!await launchUrl(
        _urlAdmin,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $_urlAdmin';
      }
    }

    return Scaffold(
      appBar: ResponsiveAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    "Ready to unlock the secrets of success? Click the button below to chat with our brilliant admin or embark on a journey to financial freedom by joining our lively Telegram channel. Your future prosperity awaits! 🚀💬🌟",
                    style: GoogleFonts.robotoSerif(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 43, 16, 2)),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () => _launchAdmin(),
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 1, 92, 28),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.post_add_outlined,
                          color: Color.fromARGB(255, 255, 2, 2),
                          size: 30,
                        ),
                        Text(
                          "Chat With Admin",
                          style: GoogleFonts.robotoSerif(
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 249, 247, 246)),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 255, 2, 2),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: _launchChannel,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 5, 66, 136),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.telegram_outlined,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 30,
                        ),
                        Text(
                          "Join Chat on Telegram",
                          style: GoogleFonts.robotoSerif(
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 249, 247, 246)),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 255, 2, 2),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
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
