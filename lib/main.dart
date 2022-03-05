import 'package:device_preview/device_preview.dart';
import 'package:flavor_playground/my_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const flavor = String.fromEnvironment('FLAVOR');
  //ignore: avoid_print
  print(flavor);

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return const ProviderScope(
          child: MyApp(),
        );
      },
    ),
  );
}
