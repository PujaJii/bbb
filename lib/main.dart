
import 'package:bbb/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   //await Firebase.initializeApp();
//
//   print("Handling a background message: ${message.messageId}");
// }

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await GlobalConfiguration().loadFromAsset("config");
  // await GetStorage.init();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(await MyApp());
}


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Megatron',
        theme: ThemeData(
          fontFamily: 'Mulish-Medium',
          primarySwatch: Colors.red,
        ),
        home: SplashView());
  }
}
