import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyClipper(),
    );
  }
}
class MyClipper extends StatefulWidget {
  const MyClipper({super.key});

  @override
  State<MyClipper> createState() => _MyClipperState();
}

class _MyClipperState extends State<MyClipper> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView( 
          
          children: [

            ClipPath(
              clipper: RectangleClipper(),
              child: Container(
                width: 200, 
                height: 200,
                color: Colors.blue,
              ),
            )
          ],


        ),


    );
  }
}

class RectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0 , size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }


}
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ClipPath(
//         clipper: CustomClipPath(),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }
// class CustomClipPath extends CustomClipper<Path> {
//   var radius=5.0;
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(size.width / 2, size.height);
//     path.lineTo(size.width, 0.0);
//     return path;
//   }
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }