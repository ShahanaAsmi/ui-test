import 'package:flutter/material.dart';
import 'package:ui/chat/chat_model.dart';
import 'package:ui/chat/chat_tile.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key, required ChatModel chatDetails}) : super(key: key);
  List<ChatModel> chatList = [
    ChatModel(
      image:
          'https://bollywoodfever.co.in/wp-content/uploads/2022/07/Josephine-Langford6-672x840.jpg',
      message: 'Hlooo',
      name: 'josephine',
      updatedAt: '7 AM',
    ),
    ChatModel(
      image:
          'https://s2.r29static.com/bin/entry/554/0,200,2000,2000/x,80/2160008/image.jpg',
      message: 'hyyyyy',
      name: 'Hardin',
      updatedAt: '4.30 AM',
    ),
    ChatModel(
      image:
          'https://kdramakisses.files.wordpress.com/2018/01/im-not-a-robot-chae-soo-bin-10.jpg?w=452&h=253',
      message: 'hw are yuhh',
      name: 'elsa',
      updatedAt: '2.40 PM',
    ),
    ChatModel(
      image:
          'https://img.mensxp.com/media/content/2019/Sep/reasons-why-dulquer-salmaan-is-worth-all-the-hype-amp-deserves-to-be-b-towns-latest-youth-icon-1200x900-1568897939.jpg',
      message: 'nyc to meet uh',
      name: 'Dq',
      updatedAt: '4 PM',
    ),
    ChatModel(
      image:
          'https://www.shethepeople.tv/wp-content/uploads/2020/09/Actress-Samantha-Akkineni.jpg',
      message: 'okkk fine',
      name: 'Sammm',
      updatedAt: '5 AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        //multiple items
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatTile(
            chatData: chatList[index],
          );
        },
      ),
    );
  }
}
