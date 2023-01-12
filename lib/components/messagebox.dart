import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  MessageBox({super.key, this.sender, this.text, this.isMe});

  final String? sender;
  final String? text;
  final bool? isMe;
  String tdata = DateFormat("hh:mm a").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment:
            isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          // Text(sender!),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: isMe! ? const Color(0xFF2C2C2C) : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text!,
                  style: TextStyle(
                    color: isMe! ? Colors.white : Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          Text(
            tdata,
            style: TextStyle(color: Color(0xFFBABFCB)),
          ),
        ],
      ),
    );
  }
}
