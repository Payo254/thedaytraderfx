// import 'package:flutter/material.dart';
// import 'homePage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BridgeClass with ChangeNotifier {
  dynamic _currentPage = placeHolder();
  dynamic get currentPage => _currentPage;

  void setPage(dynamic page) {
    _currentPage = page;
    notifyListeners();
  }
}

Widget placeHolder() {
  return Text('');
}
