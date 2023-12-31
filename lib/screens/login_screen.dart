import 'package:flutter/material.dart';
import 'package:product_screen_ui/controllers/login_screen_controller.dart';
import 'package:product_screen_ui/widgets/shared/custom_button_widget.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_form_field.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class LoginScreen extends StatelessWidget {
  final LoginScreenController _screenController = LoginScreenController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                  text: "Welcome back!",
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
              const SizedBox(height: 5.0),
              const CustomTextWidget(
                  text: "Login to your existing account", fontSize: 14.0),
              const SizedBox(height: 15.0),
              Center(
                  child: Image.asset("assets/images/splash_screen_image.png")),
              const SizedBox(height: 15.0),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email Address",
                      style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 5.0),
                  CustomTextFormField(
                    hintText: 'e.g name@example.com',
                    controller: _screenController.emailController,
                  ),
                  const SizedBox(height: 15.0),
                  Text("Password", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 5.0),
                  CustomTextFormField(
                    hintText: 'e.g ********************',
                    controller: _screenController.passwordController,
                    isPassword: true,
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: false, onChanged: (bool? val) {}),
                          CustomTextWidget(
                              text: "Remember me",
                              color: Colors.grey[700] ?? Colors.grey,
                              fontSize: 12.0),
                        ],
                      ),
                      CustomTextWidget(
                          text: "Forgot Password",
                          color: Colors.grey[700] ?? Colors.grey,
                          fontSize: 12.0),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  CustomButtonWidget(
                      buttonText: 'Login',
                      onPressed: () =>
                          _screenController.onLoginPressed(context)),
                ],
              )),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 5.0,
                    shape: const CircleBorder(),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/google_icon.png'),
                                    fit: BoxFit.cover)))),
                  ),
                  const SizedBox(width: 15.0),
                  const Material(
                    elevation: 5.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.facebook),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  const SizedBox(width: 3.0),
                  TextButton(
                    onPressed: () =>
                        _screenController.onCreateAccountPressed(context),
                    child: const Text(
                      'Create account',
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
