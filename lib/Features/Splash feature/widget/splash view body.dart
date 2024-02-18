
import 'package:blookly_app/core/utils/App_router.dart';
import 'package:blookly_app/core/utils/asset-utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),() {
      GoRouter.of(context).push(App_Router.khomeViewPath);
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.Logo),
        SizedBox(height: 4,),
        const Text("Read free books",textAlign: TextAlign.center,)
      ],

    );
  }
}
