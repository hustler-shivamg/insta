import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/resources/auth.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widget/text_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _userNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              SvgPicture.asset(
                "assets/images/insta.svg",
                color: primaryColor,
                height: 64,
              ),
              SizedBox(
                height: 64,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1553272725-086100aecf5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_a_photo),
                      ))
                ],
              ),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                textEditingController: _userNameController,
                hintText: "Enter your User Name",
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                textEditingController: _emailController,
                hintText: "Enter your Email Address",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                textEditingController: _passwordController,
                hintText: "Password",
                textInputType: TextInputType.text,
                isPass: true,
              ),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                textEditingController: _bioController,
                hintText: "Enter your Bio",
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () async {
                  String res = await Authentication().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _userNameController.text,
                      bio: _bioController.text);

                  print(res);
                },
                child: Container(
                  width: double.infinity,
                  child: Text("Sign Up"),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                      color: blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Already have an account? "),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
