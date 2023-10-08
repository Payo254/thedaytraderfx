import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thedaytrader/bridgeClass.dart';

class NotifierClass {
  void updatePage(BuildContext context, dynamic page) {
    final bridgeClass = Provider.of<BridgeClass>(context, listen: false);
    bridgeClass.setPage(page);
  }
}
