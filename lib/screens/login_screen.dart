import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widget/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
              MyTextField(
                textEditingController: _emailController,
                hintText: "Enter your Email Adress",
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
              Container(
                width: double.infinity,
                child: Text("Log In"),
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                padding: EdgeInsets.symmetric(vertical: 12),
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
                  Container(child: Text("Don't have an account? "),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(child: Text("Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
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
  }
}
