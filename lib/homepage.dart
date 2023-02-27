import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void initDynamicLinks() async{
    FirebaseDynamicLinks.instance.onLink.asBroadcastStream();
    // (
    //   (PendingDynamicLinkData dynamicLink)async{
    //     final Uri deepLink = dynamicLink.link;
    //     // Get.toNamed(deepLink.queryParameters.values.first);
        
    //     print("Deep Linking"+deepLink.toString());
    //   },
    //   onError: (Exception e) {
    //     print(e);
    //   },
    // );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDynamicLinks();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Deep Link'),
        ),
        body: Center(
          child: Container(
            child: const Text("Deep Linking Page"),
          ),
        ),
      );
  }
}