import 'package:chat_ui/ChatScreen.dart';
import 'package:chat_ui/DataModels/Message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatefulWidget {
  @override
  _ChatCardState createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index){
              final chat = chats[index];

              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user: chat.sender,))),
                child: Container(
                  decoration: BoxDecoration(
                    color: chat.unread ? Color(0xFFFFEFFF) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )
                  ),
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 30.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                            radius: 35.0,
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${chat.sender.name}', style: TextStyle(color: Colors.grey[400], fontSize: 15.0, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width * .45,
                                  child: Text('${chat.text}',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.blueGrey, fontSize: 15.0, fontWeight: FontWeight.w600),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('${chat.time}', style: TextStyle(color: Colors.blueGrey)),
                          SizedBox(height: 5.0,),
                          chat.unread ? Container(
                            height: 20.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            alignment: Alignment.center,
                            child: Text('New', style: TextStyle(color: Colors.white)),
                          ) : Text(''),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }

        ),
      ),
    );
  }
}
