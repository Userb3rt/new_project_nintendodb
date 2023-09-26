import 'dart:io';

import 'package:flutter/material.dart';
import 'package:new_project_nintendodb/app.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  try {
    if(Platform.isLinux || Platform.isMacOS || Platform.isWindows){
      WidgetsFlutterBinding.ensureInitialized();
      await WindowManager.instance.ensureInitialized();
      windowManager.waitUntilReadyToShow().then(showWindow);
    }

  } catch (e){
    print(e);
  }
  runApp(const App());
}

void showWindow (_) async {
  windowManager.setMinimumSize(const Size(300.0, 600.0));
  await windowManager.setTitle('App');
}

