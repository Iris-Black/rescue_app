import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'chewie_list_item.dart';

class TabletScreen extends StatefulWidget {
  TabletScreen({Key? key}) : super(key: key);

  @override
  _TabletScreenState createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          width: 640,
          height: 480,
          child: ListView(
            children: [
              ChewieListItem(
                  looping: true,
                  videoPlayerController: VideoPlayerController.network(
                      'https://dl8.webmfiles.org/big-buck-bunny_trailer.webm'))
            ],
          )),
    );
  }
}
