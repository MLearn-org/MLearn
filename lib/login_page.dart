import 'package:flutter/material.dart';

import 'Componants/custom_button.dart';
import 'Componants/custom_textfeild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //add logo here
            // Image.asset('logo.png'),
            const Text(
              "Login To Your Account",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            CustomTextfield(
                textEditingController: _email, hintText: "Enter email here"),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: "Password",
              textEditingController: _password,
              isObscure: true,
            ),
            const SizedBox(height: 25),
            InkWell(
                onTap: () {
                  //navigate function here
                },
                child: const CustomButton(text: 'Login')),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //have to add tik boc here,so add it
                InkWell(
                    onTap: () {
                      //remember function here
                    },
                    child: const Text("Remember me ?")),
                InkWell(
                    onTap: () {
                      //navigate to fogot password reset page
                    },
                    child: const Text("Forgot password ?")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      //google navigate
                    },
                    child: Image.asset('res/gfx/Ellipse 22.png', scale: 0.6)),
                InkWell(
                    onTap: () {
                      //facebook navigate
                    },
                    child: Image.asset('res/gfx/Ellipse 23.png', scale: 0.6)),
              ],
            ),
            const SizedBox(height: 10),

            const Text(
              "Don’t you have an account ?",
              style: TextStyle(fontSize: 18),
            ),
            InkWell(
              onTap: () {
                //navigate to sing up page
              },
              child: const Text(
                "SignUp",
                style: TextStyle(
                    fontSize: 20,
                    color: (Colors.blue),
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
