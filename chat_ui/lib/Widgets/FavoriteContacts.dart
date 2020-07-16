
import 'package:chat_ui/ChatScreen.dart';
import 'package:chat_ui/DataModels/Message.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Favorites', style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.0,
                    color: Colors.blueGrey,
                  ),
                  onPressed: (){},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (context, index){
                  final favorite = favorites[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user: favorite,))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(favorite.imageUrl),
                            radius: 35.0,
                          ),
                          SizedBox(height: 6.0,),
                          Text('${favorite.name}',
                          style: TextStyle(color: Colors.blueGrey, fontSize: 16.0, fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  );
                }

            ),
          )
        ],
      ),
    );
  }
}
