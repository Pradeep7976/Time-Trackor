// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onPressed;
  final Color txtcolor;
  final String assetname;
  CustomElevatedButton(
    this.child,
    this.color,
    this.onPressed,
    this.txtcolor,
    this.assetname,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(assetname),
            child,
            Opacity(
              opacity: 0,
              child: Image.asset(assetname),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          onPrimary: txtcolor,
          primary: color,
        ),
      ),
    );
  }
}
// Container(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       height: 50,
      
//       child: ElevatedButton(
//         onPressed: onPressed,
//         child: Row()
//         style: ElevatedButton.styleFrom(
//           onPrimary: txtcolor,
//           primary: color,
//         ),
//       ),
//     )