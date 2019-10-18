import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const items = ["20150429","20150504","20150506","20150511","20150518","20150527"];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(1, 255, 255, 255),
        body: Center(
          child: PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage('http://cdn.twokinds.keenspot.com/comics/' + items[index] + '.jpg'),
                initialScale: PhotoViewComputedScale.contained,
              );
            },
            itemCount: items.length,
          ),
        ),
      ),
    );
  }
}
