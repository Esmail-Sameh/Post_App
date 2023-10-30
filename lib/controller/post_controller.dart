 import 'package:get/get.dart';
 import '../model/post_model.dart';
 import '../service/service.dart';
 import 'package:get/state_manager.dart';

 class PostController extends GetxController {

   var postsList = RxList<PostsModel>().obs;
   var isLoding = true.obs;

   @override
   void onInit() {
     fetchPosts();
     print('onInit');
     super.onInit();
   }
   void fetchPosts() async {
     try {
       isLoding(true);
       var posts = await RemoteService.fetchPosts();
       if (posts != null) {
          postsList.value = posts;
       //  print(postsList);
       }
     } finally {
       isLoding(false);
     }
    }
 }
