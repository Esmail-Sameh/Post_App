import 'package:flutter/material.dart';
import 'package:posts_app/model/post_model.dart';
import 'package:posts_app/service/service.dart';
import 'package:posts_app/view/widgets/my_card.dart';

class HomeScreen extends StatelessWidget {
  static final nameRoute = '/homeScreen';

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as List<PostsModel>;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView.builder(
          itemBuilder:
              (context, index) =>
                  MyCard(
                    id: data[index].id,
                    userId: data[index].userId ,
                    title: data[index].title,
                    body: data[index].body,
                  ),
          itemCount: data.length,
        ),
      ),
    );
  }
}
