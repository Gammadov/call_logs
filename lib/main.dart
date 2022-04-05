import 'package:call_logs/recent_calls/call_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:call_logs/recent_calls/recent_calls_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      // прописываем маршруты до страницы
      routes: <String, WidgetBuilder>{
        // пока корневая страница -- это RecentCalls
        '/': (context) => const RecentCalls(),
        '/info': (context) => const CallInfo(),
      },
    );
  }
}
