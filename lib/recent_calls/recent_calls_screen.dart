import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:call_logs/recent_calls/call_item.dart';
import 'package:flutter/services.dart';

import 'package:call_logs/styles/colors.dart';

class RecentCalls extends StatefulWidget {
  const RecentCalls({Key? key}) : super(key: key);

  @override
  State<RecentCalls> createState() => _RecentCallsState();
}

class _RecentCallsState extends State<RecentCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColor.appBar,
        title: const Text(
          'Журнал звонков',
          style: TextStyle(color: AppColor.primary),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: AppColor.appBar,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
      ),
      body: Column(
        children: [
          CallCard(date: 'Вчера'),
          CallCard(person_and_calls: 'Дядя Ваня (3)'),
          FutureBuilder<http.Response>(
              future: http.get(Uri.parse(
                  'https://raw.githubusercontent.com/Gammadov/data/main/calls/call_logs.json')),
              builder: (context, snapshot) {
                final decoded = jsonDecode(snapshot.data!.body);
                final single_map = decoded[5];
                return CallCard(
                  person_and_calls: single_map['person'] +' ('+ single_map['calls'].toString() + ')',
                  additional: single_map['additional'],
                  date: single_map['date'],
                );
                return Text(single_map.toString());
              }),
        ],
      ),
    );
  }
}
