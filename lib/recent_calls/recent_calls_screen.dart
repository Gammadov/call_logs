import 'package:flutter/material.dart';
import 'package:call_logs/recent_calls/call_item.dart';

class RecentCalls extends StatefulWidget {
  const RecentCalls({Key? key}) : super(key: key);

  @override
  State<RecentCalls> createState() => _RecentCallsState();
}

class _RecentCallsState extends State<RecentCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Журнал звонков')),
      body: ListView.separated(
        itemBuilder: (_, int index) => const CallCard(),
        separatorBuilder: (_, int index) => const Padding(
          padding: EdgeInsets.only(left: 55.0),
          child: Divider(thickness: 1),
        ),
        itemCount: 300,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}


