// import 'package:get/get.dart';
// import '../model/post_model.dart';
// import '../service/service.dart';
// import 'package:get/state_manager.dart';
//
// class PostController extends GetxController {
//   // var postsList = List<PostsModel>().obs;
//  // List<PostsModel>? postsList = [].obs as List<PostsModel>;
//
//   // var postsList = List<PostsModel>().obs;
//   var isLoding = true;
//
//
//
//   @override
//   void onInit() {
//     fetchPosts();
//     super.onInit();
//   }
//
//   void fetchPosts() async {
//     try {
//       isLoding = true;
//       var posts = await RemoteService.fetchPosts();
//       if (posts != null) {
//         postsList = posts;
//         print(postsList);
//       }
//     } finally {
//       isLoding =false;
//     }
//   }
// }
