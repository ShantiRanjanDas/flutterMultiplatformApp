import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';

import 'exporter.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    await DesktopWindow.setMaxWindowSize(const Size(600, 800));
  }

  runApp(ChangeNotifierProvider(
      create: (_) => CurrentSelectedFood(foodList.first),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appNameStr,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}
