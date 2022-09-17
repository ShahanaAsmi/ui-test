import 'package:flutter/material.dart';
import 'package:ui/chat/chat_list.dart';
import 'package:ui/chat/chat_model.dart';
import 'package:ui/chat/message_model.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key, required this.chatDetails}) : super(key: key);
  final ChatModel chatDetails;

  @override
  State<ChatDetails> createState() => _ChatDetails();
}

class _ChatDetails extends State<ChatDetails> {
  bool? isSend = false;
  final TextEditingController _msgController = TextEditingController(text: '');
  bool emojiShow = false;
  final FocusNode _focusNode = FocusNode();
  List<MessageModel> messages = [
    MessageModel(isSend: true, message: 'hello'),
    MessageModel(message: 'hi', isSend: false),
    MessageModel(message: 'where are you?', isSend: true),
    MessageModel(message: 'At Calicut', isSend: false),
    MessageModel(message: 'why?', isSend: true),
  ];
  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        leadingWidth: 92,
        leading: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            const SizedBox(
              width: 1,
            ),
            CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(widget.chatDetails.image!)),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            )
          ],
        ),
        title: Column(
          children: [
            Text(widget.chatDetails.name.toString()),
            Text(
              '${widget.chatDetails.updatedAt}',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatBubble(
                  msg: messages[index],
                );
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle,
                              color: Colors.blue,
                              size: 40,
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width - 110,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: TextField(
                              focusNode: _focusNode,
                              controller: _msgController,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  setState(() {
                                    isSend = true;
                                  });
                                } else {
                                  setState(() {
                                    isSend = false;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      onPressed: () {
                                        // _focusNode.unfocus();

                                        setState(() {
                                          emojiShow = !emojiShow;
                                        });
                                      },
                                      icon: Icon((emojiShow)
                                          ? Icons.keyboard
                                          : Icons.emoji_emotions)),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [],
                                  ),
                                  hintText: 'Message'),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              messages.add(MessageModel(
                                message: _msgController.text,
                              ));
                              _msgController.clear();
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.send),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
