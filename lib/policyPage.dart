import 'package:flutter/material.dart';

import 'appBar.dart';
import 'bottomSection.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "TERMS AND CONDITIONS",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "1. Copyright in the content of our publications and this website is owned by The List, or under agreement from a copyright owning partner, or under other rights you have granted us. All rights are reserved and are protected by copyright, database, design and other rights. The content (“Our Content”) of our publications, apps and websites includes editorial and listings, advertising and comments, reviews, photos, videos, sound, data and any material that users of the services or readers of our publications contribute. By supplying or making available content, you agree that you have the right to allow us to use the material and distribute it to third parties, and your grant of rights is not contravening other rights. You may not modify, publish, transmit, participate in the transfer or sale of, create derivative works, or in any way exploit any of Our Content in whole or in part without the prior written agreement of The List. All permitted copying, redistribution or publication of Our Content, shall require the user to agree that there shall be no changes in or deletion of author attribution, trademark legend, copyright or other rights notice and shall include links to this website.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "2. Individuals or organisations who supply or make content available including advertisements, comments, reviews, photos, videos, data or any other material, via the website or via means of post, email, FTP, URL or other method, grant us rights to use it under these terms and conditions except to the extent an agreement or variation signed by both parties has been executed. Our distribution of content to third parties, which may contain your personal data, will take place where we have made a legitimate assessment of compliance with GDPR, the processing purpose is modest and should be well understandable by you.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                // Add more terms and conditions here
                SizedBox(
                  height: 30,
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
