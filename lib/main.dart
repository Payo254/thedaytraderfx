import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bridgeClass.dart';
import 'homePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...



Future<void> main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    ChangeNotifierProvider(
      create: (context) => BridgeClass(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // dynamic currentPage = BridgeClass.currentPage();
  @override
  Widget build(BuildContext context) {
    // final bridgeClass = Provider.of<BridgeClass>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
