import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallInfo extends StatelessWidget {
  const CallInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange[300],
        alignment: Alignment.center,
        child: FutureBuilder<http.Response>(
          future: http.get(Uri.parse('https://reqres.in/api/users')),
          builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot){
            if (snapshot.hasData) {
              return Text(snapshot.data!.body);
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}