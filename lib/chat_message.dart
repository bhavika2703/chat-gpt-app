import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key,
        required this.text,
        required this.sender,
      });

  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(sender)
            .text
            .subtitle1(context)
            .make()
            .box
            .color(sender == "Me" ? Vx.pink100 : Vx.blue100)
            .p16
            .rounded
            .alignCenter
            .makeCentered(),
        Expanded(
          child:text.trim().text.bodyText1(context).make().px12(),
        ),
      ],
    ).py8();
  }
}