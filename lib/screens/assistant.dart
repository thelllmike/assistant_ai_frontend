import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AssistantScreen extends StatefulWidget {
  @override
  _AssistantScreenState createState() => _AssistantScreenState();
}

class _AssistantScreenState extends State<AssistantScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _isComposingMessage = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'New chat',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 1.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: 2, // Replace with your dynamic message count
              itemBuilder: (context, index) {
                // For the sake of this example, let's assume odd index is user message
                bool isUserMessage = index % 2 == 1;
                return _buildMessageBubble(
                  message: isUserMessage
                      ? 'ok noted. what should I wear today?'
                      : 'Good morning Perera...Today is 1st of November 2023 and it\'s 4.30 am now. kind of sunny day according to google weather and today you have to complete a quiz at university 8.30 am.',
                  isUser: isUserMessage,
                );
              },
            ),
          ),
          _buildBottomBar(context),
        ],
      ),
    );
  }

  Widget _buildMessageBubble({required String message, required bool isUser}) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: isUser ? Colors.blue : Colors.grey[850],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            ),
            if (!isUser) // Add your conditional rendering for the microphone icon
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.mic_none, size: 20.0, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.grey[200],
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (text) {
                setState(() {
                  _isComposingMessage = text.isNotEmpty;
                });
              },
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message...',
              ),
              textInputAction: TextInputAction.send,
              onSubmitted: _handleSubmitted,
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    if (text.isEmpty) return;
    // Implement your message sending functionality here
    setState(() {
      _isComposingMessage = false;
    });
    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
