import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(imagePath));
  }
}

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  int currentShow = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: () {},
            ),
          ),
        ],
      ),
      // body: Image.asset(images[0]),
      body: ImageDisplay(imagePath: images[currentShow]),
    );
  }
}

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner:
        false, // Why this line ? Can you explain it ? this line it hide the debug when we set it as a false
    // home: Scaffold(
    //   backgroundColor: Colors.green[50],
    //   appBar: AppBar(
    //     backgroundColor: Colors.green[400],
    //     title: const Text('Image viewer'),
    //     actions: <Widget>[
    //       IconButton(
    //         icon: const Icon(Icons.navigate_before),
    //         tooltip: 'Go to the previous image',
    //         onPressed: () => {},
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
    //         child: IconButton(
    //           icon: const Icon(Icons.navigate_next),
    //           tooltip: 'Go to the next image',
    //           onPressed: () => {},
    //         ),
    //       ),
    //     ],
    //   ),
    //   body: Image.asset(images[0]),
    // ),
  ),
);
