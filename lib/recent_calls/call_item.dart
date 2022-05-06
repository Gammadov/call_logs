import 'package:flutter/material.dart';

import 'package:call_logs/styles/colors.dart';
import 'package:call_logs/styles/text_styles.dart';

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
              color: AppColor.tertiary,
              size: 14,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('+0 (000) 000-00-00', style: AppTextStyle.bold17()),
                Text('Доп. информация', style: AppTextStyle.regular15()),
              ],
            ),
          ),
          Text('Дата', style: AppTextStyle.regular15()),
          IconButton(
              padding: const EdgeInsets.only(left: 8, right: 21),
              onPressed: () => Navigator.pushNamed(context, '/info'),
              icon: const Icon(
                Icons.info_outlined,
                color: AppColor.link,
                size: 22,
              )),
        ],
      ),
    );
  }
}
