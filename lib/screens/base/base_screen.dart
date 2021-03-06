import 'package:flutter/material.dart';
import 'package:loja_virtual/common/custom_drawer/custom_drawer.dart';
import 'package:loja_virtual/model/page_manager.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Home'),
            ),

          ),
//          Container(color: Colors.red,),
//          Container(color: Colors.blue,),
//          Container(color: Colors.green,)
//        ],
    Container(
    drawer: CustomDrawer(),
    appBar: AppBar(
    title: const Text('Home2'),
    ),
    ),

    Scaffold(
    drawer: CustomDrawer(),
    appBar: AppBar(
    title: const Text('Home3'),
    ),

    ),
    Scaffold(
    drawer: CustomDrawer(),
    appBar: AppBar(
    title: const Text('Home3'),
    ),

    ),

    Scaffold(
    drawer: CustomDrawer(),
    appBar: AppBar(
    title: const Text('Home4'),
    ),

    ),


    ]),
    );
  }
}



