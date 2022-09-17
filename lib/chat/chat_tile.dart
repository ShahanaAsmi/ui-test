import 'package:flutter/material.dart';
import 'package:ui/chat/chat_detail.dart';
import 'package:ui/chat/chat_model.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key, required this.chatData}) : super(key: key);
  final ChatModel chatData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatDetails(
                      chatDetails: chatData,
                    )));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          // backgroundColor: Colors.grey,
          // child: Icon(Icons.person),
          backgroundImage: NetworkImage(chatData.image!),
        ),
        title: Text(chatData.name!),
        subtitle: Text(chatData.message!),
        trailing: Text(chatData.updatedAt!),
      ),
    );
  }
}
