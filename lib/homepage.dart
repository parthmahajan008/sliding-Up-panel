import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:slidinguppanel/panelwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    final panelheigtopen = MediaQuery.of(context).size.height * 0.8;
    final panelheigtclosed = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        )),
      ),
      body: SlidingUpPanel(
        controller: panelController,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        minHeight: panelheigtclosed,
        maxHeight: panelheigtopen,
        parallaxEnabled: true,
        parallaxOffset: 0.3,
        body: Container(
          // color: Colors.black,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login2.png'),
                fit: BoxFit.cover),
          ),
        ),
        panelBuilder: (controller) => PanelWidget(
          panelController: panelController,
          controller: controller,
        ),
      ),
    );
  }
}
