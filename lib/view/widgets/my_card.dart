import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int id ;
  final int userId ;
  final String title ;
  final String body ;

  const MyCard({
    super.key,
    required this.id,
    required this.userId,
    required this.title,
    required this.body
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.network('https://icon-library.com/images/personal-icon/personal-icon-20.jpg'),
            ),
            title: Text('id: ${id}'),
            subtitle: Text('User id: ${userId}'),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  body,
                  style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
