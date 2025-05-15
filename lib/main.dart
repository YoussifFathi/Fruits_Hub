import 'package:flutter/material.dart';
import 'package:my_fruits_hub/app.dart';
import 'package:my_fruits_hub/core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const FruitsHubApp());
}
