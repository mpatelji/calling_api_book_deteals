import 'package:calling_api_book_deteals/view_serachbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SearchbarScreen(),
    );
  }
}
// class VideoplayerScreen extends StatefulWidget {
//   const VideoplayerScreen({super.key});
//
//   @override
//   State<VideoplayerScreen> createState() => _VideoplayerScreenState();
// }
//
// class _VideoplayerScreenState extends State<VideoplayerScreen> with TickerProviderStateMixin {
//   late VideoPlayerController _controller;
//   late AnimationController Controller;
//   bool isPlay=false;
//   @override
//   void initState() {
//     super.initState();
//     Controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
//     _controller= VideoPlayerController.networkUrl(Uri.parse("https://cdn.pixabay.com/video/2023/01/26/148100-793525275_large.mp4"))
//       ..initialize().then((_)
//       setState(() {});
//     });
//
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//          children: [
//          Container(
//            width: 400,
//              height: 300,
//              child: VideoPlayer(_controller)),
//          Padding(
//            padding: const EdgeInsets.only(top: 150,left: 170),
//            child: Row(
//              children: [
//                GestureDetector(
//                  onTap: () {
//                    if(isPlay ==false){
//                      Controller.forward();
//                     _controller.play();
//                     isPlay=true;
//                    }
//                    else{
//                      Controller.reverse();
//                      _controller.pause();
//                      isPlay=false;
//                    }
//                  },
//                  child:  AnimatedIcon(
//                    color: Colors.white,
//            icon: AnimatedIcons.play_pause, progress: Controller,
//                  ),
//                ),
//
//
//              ],
//            ),
//          )
//          ],
//       ),
//     );
//   }
// }