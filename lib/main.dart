import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/page/choose_topic_pages.dart';

import 'page/home_pages.dart';

void main() {
  runApp(
  DevicePreview(
    enabled: ! kReleaseMode,
    builder: (context) => const MainApp(), // Wrap your app
  ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '$MyHomePage',
      routes: {
        '$MyHomePage' : (_) => const MyHomePage(), 
        '$ChooseTopicPage' : (_) => const ChooseTopicPage(), 
      }, 
      // home : const MyHomePage(),
    );
  }
}
