import 'package:chat_ui/DataModels/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DataModels/Message.dart';

class ChatScreen extends StatefulWidget {

  ChatScreen({this.user});

  final User user;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('${widget.user.name}', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (context, index){
                        final message = messages[index];
                        bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(Message message, bool isMe) {

    final messageBox = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: isMe ? Colors.yellow[100] : Color(0xFFFFEFFF),
          borderRadius: isMe ? BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
          ) :
          BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          )
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      margin: isMe ?EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0) : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${message.time}', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
          SizedBox(height: 5.0,),
          Text('${message.text}', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        ],
      ),
    );

    if (isMe){

      return messageBox;
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        messageBox,
        IconButton(
          icon: message.isLiked ? Icon(
            Icons.favorite,
            size: 30.0,
            color: Colors.red,
          ) : Icon(
            Icons.favorite_border,
            size: 30.0,
            color: Colors.blueGrey,
          ),
          onPressed: (){

          },
        )
      ],
    );
  }

  Widget _buildMessageComposer() {

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Transform.rotate(
            angle: 0.6,
            child: IconButton(
              icon: Icon(
                Icons.attach_file,
                color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                hintText: 'Type your message...',
                prefixIcon: IconButton(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  icon: Icon(
                    Icons.face,
                  ),
                  iconSize: 25.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35.0) ,
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.blueGrey[100],
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0) ,
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.blueGrey,
                    )
                ),
                )
              ),
            ),
          Transform.rotate(
            angle: -0.6,
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              onPressed: (){},
            ),
          ),
        ],
      )
    );
  }
}
