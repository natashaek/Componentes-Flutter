import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://elcomercio.pe/resizer/I0nAnN1Z6W2ernf6CRydrL356ZE=/1200x800/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/I7AKOS3WLNFO3IMDJBFHSAKMPY.jpg'),
              radius: 30.0,
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text('BBH'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.allkpop.com/upload/2021/03/content/261108/web_data/allkpop_1616771628_untitled-1.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_location),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
