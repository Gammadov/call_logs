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
          Container(
            width: 55,
            alignment: Alignment.center,
            child: const Icon(
              Icons.phone_forwarded,
              color: Colors.black26,
              size: 21,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('+0 (000) 000-00-00',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                Text('Доп. информация', style: TextStyle(color: Colors.black38, fontSize: 14)),
              ],
            ),
          ),
          const Text('Дата', style: TextStyle(color: Colors.black38, fontSize: 14)),
          SizedBox(
            width: 55,
            child: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/info'),
                icon: const Icon(
                  Icons.info_outlined,
                  color: Colors.lightBlue,
                )),
          ),
        ],
      ),
    );
  }
}
