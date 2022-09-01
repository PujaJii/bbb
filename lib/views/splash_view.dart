import 'dart:async';
import 'package:bbb/styles/app_colors.dart';
import 'package:bbb/styles/commonmodule/my_widgets.dart';
import 'package:bbb/views/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashView extends StatelessWidget {
  var box = GetStorage();

  @override
  Widget build(BuildContext context) {
//    print('userId`````````````: ${box.read('userId')}');
    Timer(const Duration(seconds: 4), () {
     //Get.offAll(HomeView());
      if(box.hasData('login')){

      }else{
      //Get.offAll(LoginView());
      }
    });

    return Scaffold(
      body: 
      Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/spbg.jpg', fit: BoxFit.cover,)
          ),
          //getstbg.png
          Positioned(
              left: 0,
              right: 0,
              child: Image.asset('assets/images/logo.png', scale: 1.4)),

          Positioned(
              left: 0,
              right: 0,
              bottom: 15,
              child: Column(
                children: [
                  InkWell(
                      onTap:(){
                        Get.to(LoginView());
                      },
                      child: Image.asset('assets/images/getstbg.png', scale: 1.2)),
                  SizedBox(height: 6),
                  MyWidgets.textView('My continuing, you accept our Terms of Service\nand acknowledge receipt of out Privacy Policy', Colors.white60, 12)
                ],
              ))

        ],
      )
    );
  }
}
