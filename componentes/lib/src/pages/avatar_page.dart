import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQGCJ4BsoVGEUw/profile-displayphoto-shrink_400_400/0?e=1607558400&v=beta&t=iRf5RVyrWpePyVEh4cN7qS2zykzqMx9sDN5Z-cgeq0s'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text('Fr'),
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              "https://media-exp1.licdn.com/dms/image/C4D03AQGCJ4BsoVGEUw/profile-displayphoto-shrink_400_400/0?e=1607558400&v=beta&t=iRf5RVyrWpePyVEh4cN7qS2zykzqMx9sDN5Z-cgeq0s"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
