import 'package:cashy_app/components/my_button.dart';
import 'package:cashy_app/components/my_textfield.dart';
import 'package:cashy_app/components/square_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

// textfield controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

// sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 50,
            ),
            // logo here
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            // welcome text here
            Text(
              "Welcome back you've been missed!",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            const SizedBox(
              height: 50,
            ),
            // username
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            // password
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("Forgot Password?",
                    style: TextStyle(
                      color: Colors.grey[600],
                    )),
              ]),
            ),

            const SizedBox(
              height: 25,
            ),
            // sign in
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(
              height: 50,
            ),
            // or continue
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or continue with",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // google + apple sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(
                  width: 25,
                ),
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            // not a member ? register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Register now",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
