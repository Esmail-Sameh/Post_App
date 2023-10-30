import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/post_controller.dart';

class DetailsScreen extends StatelessWidget {
  static final nameRoute = '/detailsScreen';
  PostController _controller = Get.find();
  var bodyController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var argRout = ModalRoute.of(context)!.settings.arguments as int;
    bodyController.text = _controller.postsList.value[argRout - 1].body;

    return Scaffold(
      appBar: AppBar(
        title: Text('${argRout}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${_controller.postsList.value[argRout - 1].title}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 7,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    autofocus: true,
                    controller: bodyController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500, height: 2),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
