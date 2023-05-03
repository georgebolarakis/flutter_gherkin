import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  final txtCounter = find.byValueKey(const ValueKey('counter'));
  final btnIncrement = find.byTooltip('Increment');
  final btnAdd = find.byValueKey(const ValueKey(""));
  final btnSubtract = find.byTooltip('subtract');
  final txtAlert = find.byValueKey(const ValueKey('alert'));
  final btnClose = find.byValueKey(const ValueKey(''));

  //we need to have a constractor to identify and initialize the flutter_driver
  late FlutterDriver _driver;
  HomePage(FlutterDriver driver) {
    this._driver = driver;
  }

  // Future<String> getCounterValue() async {
  //   try {
  //     return await _driver.getText(txtCounter);
  //   } on FileSystemException catch (identifier) {
  //     return '';
  //   }
  // }

  Future<String> getCounterValue() async {
    return await _driver.getText(txtCounter);
  }
}
