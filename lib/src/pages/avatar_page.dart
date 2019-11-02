import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.icons8.com/bubbles/2x/user.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: FadeInImage(
            image: NetworkImage('https://www.canva.com/learn/wp-content/uploads/2018/12/00-winterlandscapes_featimage.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
          margin: EdgeInsets.all(15),
        ),
      ),
    );
  }
}