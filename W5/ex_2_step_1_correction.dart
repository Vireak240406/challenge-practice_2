import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({super.key, required this.title});
  final String title;

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    IconData heartIcon;
    Color heartColor;
    if (isFavorite == true) {
      heartIcon = Icons.favorite;
      heartColor = Colors.red;
    } else {
      heartIcon = Icons.favorite_border;
      heartColor = Colors.grey;
    }
    return //Placeholder();
    Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.0),
                Text('description'),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (isFavorite == true) {
                  isFavorite = false;
                } else {
                  isFavorite = true;
                }
              });
            },
            icon: Icon(heartIcon, color: heartColor),
          ),
        ],
      ),
    );
  }
}

void main() //dynamic hearthIcon, String title
=> runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          FavoriteCard(title: "Card1"),
          FavoriteCard(title: "Card2"),
          FavoriteCard(title: "Card3"),
          // Container(
          //   decoration: const BoxDecoration(
          //     border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
          //   ),
          //   padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       const Expanded(
          //         flex: 7,
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               'title',
          //               style: TextStyle(
          //                 color: Colors.blue,
          //                 fontWeight: FontWeight.w800,
          //               ),
          //             ),
          //             SizedBox(height: 10.0),
          //             Text('description'),
          //           ],
          //         ),
          //       ),
          //       IconButton(
          //         onPressed: () => {},
          //         icon: const Icon(Icons.favorite, color: Colors.red),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    ),
  ),
);
