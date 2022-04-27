import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCard extends StatefulWidget {
  const CallCard({Key? key}) : super(key: key);

  @override
  State<CallCard> createState() => _CallCardState();
}

class _CallCardState extends State<CallCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 14, top: 15, right: 14, bottom: 31),
            child: Icon(
              Icons.phone_forwarded,
              color: Color(0xFFC4C4C6),
              size: 14,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('+0 (000) 000-00-00',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                Text('Доп. информация', style: TextStyle(color: Color(0xff8A8A8D), fontSize: 15)),
              ],
            ),
          ),
          const Text('Дата', style: TextStyle(color: Color(0xff8A8A8D), fontSize: 15)),
          IconButton(
            padding: const EdgeInsets.only(left: 8, right: 21),
              onPressed: () => Navigator.pushNamed(context, '/info'),
              icon: const Icon(
                Icons.info_outlined,
                color: Color(0xff3478F6),
                size: 22,
              )),
        ],
      ),
    );
  }
}
