import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/login_screen.dart';
import 'package:product_screen_ui/widgets/shared/custom_button_widget.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back, color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign up",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              const Text(
                "Please enter your information below to sign up",
                style: TextStyle(fontSize: 12.0),
              ),
              const SizedBox(height: 15.0),
              Center(
                  child: Image.asset("assets/images/splash_screen_image.png")),
              const SizedBox(height: 15.0),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 10.0),
                  CustomTextFormField(
                      hintText: 'Please Enter your name',
                      controller: _nameController),
                  const SizedBox(height: 15.0),
                  Text("Email", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 10.0),
                  CustomTextFormField(
                      hintText: 'Please Enter your email',
                      controller: _emailController),
                  const SizedBox(height: 15.0),
                  Text("Password", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 10.0),
                  CustomTextFormField(
                    hintText: 'Please enter your password',
                    isPassword: true,
                    controller: _passwordController,
                  ),
                  const SizedBox(height: 25.0),
                  CustomButtonWidget(
                      buttonText: 'Sign up',
                      onPressed: () => _onSignUpPressed(context)),
                ],
              )),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey[700], fontSize: 17.0),
                  ),
                  const SizedBox(width: 3.0),
                  TextButton(
                    onPressed: () => _onLoginPressed(context),
                    child: const Text('Sign in',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent, fontSize: 15.0)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onLoginPressed(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  void _onSignUpPressed(BuildContext context) async {
    try {
      var response =
          await Dio().post("https://api.escuelajs.co/api/v1/users/", data: {
        "email": _emailController.text,
        "password": _passwordController.text,
        "name": _nameController.text,
        "avatar": "https://picsum.photos/800",
      });

      if (response.statusCode == 201) {
        print("Success");
        print(response.data);
        Navigator.of(context).pop();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
