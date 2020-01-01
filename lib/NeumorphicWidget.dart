import 'package:flutter/material.dart';


class NeumorphicWidgetCircular extends StatelessWidget {

  static const int DARK_MODE = 1;
  static const int Light_MODE = 2;
  static final Color _darkModeShadowOneColor = Colors.black.withOpacity(0.12);
  static final Color _darkModeShadowTwoColor = Color.fromRGBO(46, 46, 46, 0.6);
  static final Color _lightModeShadowOneColor = Colors.black.withOpacity(0.1);
  static final Color _lightModeShadowTwoColor = Colors.white.withOpacity(0.5);
  Widget child;
  double height;
  double width;
  Color backgroundScreenColor;
  int mode;


  NeumorphicWidgetCircular({this.child, this.height = 80, this.width = 80,
      this.backgroundScreenColor, this.mode = Light_MODE}):assert(backgroundScreenColor!=null);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 15.0,
            color: mode == DARK_MODE ? _darkModeShadowOneColor:_lightModeShadowOneColor,
            offset: Offset(8.0, 8.0),
          ),
          BoxShadow(
            blurRadius: 12.0,
            color: mode == DARK_MODE ? _darkModeShadowTwoColor:_lightModeShadowTwoColor,
            offset: Offset(-8.0, -8.0),
          ),
        ],
        shape: BoxShape.circle,
        //border: Border.all(),
        color: backgroundScreenColor,
      ),
      child: child,
    );
  }
}
