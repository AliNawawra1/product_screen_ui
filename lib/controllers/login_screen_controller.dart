import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:product_screen_ui/enums/cache_keys.dart';
import 'package:product_screen_ui/helpers/shared_prefs_helper/shared_prefs_helper.dart';
import 'package:product_screen_ui/screens/main_screen.dart';
import 'package:product_screen_ui/screens/sign_up_screen.dart';

class LoginScreenController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onCreateAccountPressed(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  void onLoginPressed(BuildContext context) async {
    try {
      var response =
          await Dio().post("https://api.escuelajs.co/api/v1/auth/login", data: {
        "email": emailController.text,
        "password": passwordController.text,
      });
      if (response.statusCode == 201) {
        print("Success");
        await SharedHelper.prefs.setString(CacheKeys.accessToken.name,
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcwMjkwNTEyNiwiZXhwIjoxNzA0NjMzMTI2fQ.NrkOZudbjT4IwWJEb4YCrP-VhM4fpdoSny2KxB4_akk");
        await SharedHelper.prefs.setBool(CacheKeys.isLogin.name, true);
        if (SharedHelper.prefs.getBool(CacheKeys.isLogin.name) ?? false) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainScreen()));
        }
        print(response.data);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
