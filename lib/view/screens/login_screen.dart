import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posts_app/view/screens/home_screen.dart';
import 'package:posts_app/view/widgets/my_Textfield.dart';
import 'package:posts_app/view/widgets/my_button.dart';
import 'package:posts_app/view/widgets/squar_tile.dart';
import '../../model/post_model.dart';
import '../../service/service.dart';

class LoginScreen extends StatelessWidget {
  static final nameRoute = '/loginScreen';
  var userController = TextEditingController();
  var passwordController = TextEditingController();

  List<PostsModel> _data = [];

  Future<List<PostsModel>?> getData() async {
    var respons = await RemoteService.fetchPosts();
    if (respons != null) {
      _data = respons;
      print(_data);
      return _data;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey[300],
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),

                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                // Welcome back
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome back you\'ve been missed! ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // User Text Filde
                MyTextfield(
                    controller: userController,
                    hintText: 'User Name',
                    obscureText: false),
                const SizedBox(
                  height: 10,
                ),

                // Password Text Filde
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),

                // Forget password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'forgot password?',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Sign in Button
                MyButton(
                  onTap: () {
                    // await getData();
                    // print("lenhtg ${_data[4].title}" );
                    Get.toNamed(HomeScreen.nameRoute,);
                    print('click sign in button');
                  },
                  text: 'Sign In',
                ),

                const SizedBox(
                  height: 10,
                ),

                // Or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[400],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                          child:
                              Divider(thickness: 1.0, color: Colors.grey[400])),
                    ],
                  ),
                ),

                // google + apple logo button
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquarTile(
                        passImage: 'assets/images/google_icon.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SquarTile(
                        passImage: 'assets/images/apple_icon.png',
                      ),
                    ],
                  ),
                ),

                // Not a member? Register now

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a amember?'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Register now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
