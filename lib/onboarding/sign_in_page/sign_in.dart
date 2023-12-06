import 'package:bootcamp_ass/components/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../components/widgets/custom_textfield.dart';

class SignInScreen extends StatelessWidget {
  final _username = TextEditingController();
  final _password = TextEditingController();

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Icon(
            Icons.lock,
            size: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(child: Text("Welcome back, you have been missed!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              controller: _username,
              hintText: 'Username',
              prefixIcon: const Icon(Icons.person),
              obscureCharacter: "*",
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              controller: _password,
              hintText: 'Password',
              prefixIcon: const Icon(Icons.key),
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
              obscureCharacter: "*",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(child: Container()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Text("Forget Password?"),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            color: Colors.grey.shade600,
            name: "Sign In",
            ontap: () {
              Navigator.pushNamed(context, '/RegisterScreen');
            },
            textColor: Colors.white,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Image.asset("assets/images/google.png"),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: Image.asset("assets/images/twitter.png"),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: Image.asset("assets/images/whatsapp.png"),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Not a member?"),
              const SizedBox(width: 2,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/RegisterScreen');
                },
                child: const Text(
                  "Register now.",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
