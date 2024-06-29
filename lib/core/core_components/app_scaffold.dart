import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/app_assets.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key, this.body, this.appBar, this.drawer, this.bottomNavigationBar, this.withoutBackground = true}) : super(key: key);
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final bool withoutBackground;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Visibility(
            visible: !withoutBackground,
            child: Image.asset(
              AppPNG.background,
              fit: BoxFit.cover,
              //width: double.infinity,
            ),
          ),
          if(body!=null)
            SafeArea(child: body!)
        ],
      ),
      appBar: appBar,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
