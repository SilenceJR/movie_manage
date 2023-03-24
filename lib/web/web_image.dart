// import 'dart:html';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
//
// class WebImage extends StatelessWidget {
//   String url;
//   double width;
//   double height;
//
//   WebImage(this.url, this.width, this.height, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     String _divId = "web_image_" + DateTime.now().toIso8601String();
//     // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//       _divId,
//       (int viewId) => ImageElement(src: url),
//     );
//     return SizedBox(
//       width: width,
//       height: height,
//       child: HtmlElementView(
//         key: UniqueKey(),
//         viewType: _divId,
//       ),
//     );
//   }
// }
