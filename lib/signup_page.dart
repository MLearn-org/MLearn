import 'package:flutter/material.dart';

import 'Componants/custom_button.dart';
import 'Componants/custom_textfeild.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.co_present_rounded, size: 140),
              const SizedBox(height: 30),
              const Text(
                " Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              CustomTextfield(
                  hintText: "Enter name", textEditingController: _name),
              const SizedBox(height: 20),
              CustomTextfield(
                  textEditingController: _email, hintText: "Enter email here"),
              const SizedBox(height: 20),
              CustomTextfield(
                hintText: "Password",
                textEditingController: _password,
                isObscure: true,
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                  value: isChecked,
                  title: const Text("I agree with terms & conditions",
                      style: TextStyle(fontSize: 16)),
                  onChanged: ((bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  })),
              const SizedBox(height: 20),
              InkWell(
                  onTap: () {
                    //navigate function here
                  },
                  child: const CustomButton(text: 'Sign Up')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        //google navigate
                      },
                      child: Image.asset('res/gfx/Ellipse 22.png', scale: 0.6)),
                  const SizedBox(width: 20),
                  InkWell(
                      onTap: () {
                        //facebook navigate
                      },
                      child: Image.asset('res/gfx/Ellipse 23.png', scale: 0.6)),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                " Already have an account ?",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 6),
              InkWell(
                onTap: () {
                  //navigate to sing up page
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 20,
                      color: (Colors.blue),
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
