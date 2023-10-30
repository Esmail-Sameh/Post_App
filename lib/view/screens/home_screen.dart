import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posts_app/controller/post_controller.dart';
import 'package:posts_app/view/widgets/my_card.dart';

class HomeScreen extends StatelessWidget {
  static final nameRoute = '/homeScreen';

  final PostController _controller = Get.put(PostController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    // var data = ModalRoute.of(context)!.settings.arguments as List<PostsModel>;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body:Obx((){
          if(_controller.isLoding.value){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 10,),
                  Text('Loding...'),
                ],
              ),
            );
          }else{
            return ListView.builder(
              itemBuilder: (context, index) =>
                  MyCard(
                    id: _controller.postsList.value[index].id,
                    userId:  _controller.postsList.value[index].userId,
                    title:  _controller.postsList.value[index].title,
                    body:  _controller.postsList.value[index].body,
                  ),
              itemCount: _controller.postsList.value.length,
            );
          }
        }),



      ),
    );
  }
}