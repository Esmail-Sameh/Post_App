import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posts_app/view/screens/details_screen.dart';

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
    return GestureDetector(
      onTap: () {
        Get.toNamed(DetailsScreen.nameRoute , arguments: id);
      },
      child: Card(
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
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    body,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
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
      ),
    );
  }
}
