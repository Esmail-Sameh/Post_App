import 'package:http/http.dart' as http;
import 'package:posts_app/model/post_model.dart';

class RemoteService{
  static var client = http.Client();
  List<PostsModel> data = [];


  static Future<List<PostsModel>?> fetchPosts ()async{
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode == 200){
      var jsonString = response.body;
      print(jsonString);
      return postFromJson(jsonString);
    }else{
      return null;
    }


  }
}