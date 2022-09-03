import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;
  PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 36,
        ),
        buildAboutText(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget buildAboutText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            builddraghandle(),
            const Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
                '''Go to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experience.
Go to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experienceGo to prototypes by clicking Design. Combines drawing surfaces together to display navigation within large applications. Linking design elements in the drawing area, B. Cells replay screens. Add interactions using visual controls to test and validate the experience

             ''')
          ],
        ),
      );

  Widget builddraghandle() => GestureDetector(
        onTap: togglepanel,
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(color: Colors.yellow),
          ),
        ),
      );

  void togglepanel() {
    panelController.isPanelOpen
        ? panelController.close()
        : panelController.open();
  }
}
