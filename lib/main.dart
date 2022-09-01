import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/di/di_container.dart';
import 'features/app/presentation/pages/tripper_app.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await configureDependencies();

  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) => const ProviderScope(child: TripperApp()), // Wrap your app
  //   ),
  // );

  runApp(const ProviderScope(child: TripperApp()));
}
