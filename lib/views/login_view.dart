import 'package:bbb/styles/app_colors.dart';
import 'package:bbb/styles/commonmodule/my_widgets.dart';
import 'package:flutter/material.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  //

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/loginbg.jpg', fit: BoxFit.cover,)
          ),
          Positioned(
            top: 100,
              right: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end
                ,
                children: [
                  Image.asset('assets/images/logo.png', scale: 2.2),
                  SizedBox(height: 30),
                  MyWidgets.textView('LOGIN', Colors.white, 30, fontWeight: FontWeight.bold),
                    MyWidgets.textView('Here', Colors.white, 20),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 1,
            child: Column(
              children: [
                Container(
                  //padding: Ed,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      //controller: _emailController,
                      style: TextStyle(fontSize: 13.5, color: AppColors.white),
                      validator: (input) =>
                      !input!.contains("@") ? "invalid email Format" : null,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.white70),
                        fillColor: AppColors.btnColor,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 20.0),
                        hintText: 'Enter Email',
                        labelText: '   Enter Email',
                        labelStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            // light
                            fontStyle: FontStyle.normal),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: AppColors.white,
                            )),
                      )),
                ),
                const SizedBox(height: 15),
                Container(
                  //padding: Ed,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                      obscureText: true,
                      //controller: _passwordController,
                      style: TextStyle(fontSize: 13.5, color: AppColors.white),
                      validator: (input) =>
                      input!.isEmpty ? "Enter password" : null,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.white70),
                        fillColor: AppColors.btnColor,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 20.0),
                        hintText: 'Enter password',
                        labelText: '   Enter password',
                        labelStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            // light
                            fontStyle: FontStyle.normal),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: AppColors.white,
                            )),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
