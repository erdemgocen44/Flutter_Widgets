import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class WrapHome extends StatefulWidget {
  const WrapHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<WrapHome> createState() => _WrapHomeState();
}

class _WrapHomeState extends State<WrapHome> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        resim200,
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.25,
        fit: BoxFit.cover,
      ),
    );
    List<Widget> _list = [
      _image,
      _image,
      _image,
      _image,
      _image,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          //Bu widget sayesinde row ile ekrana sığdıramadığımız dataları ekrana sığmadıkça aşagı otomatik kaydırma özelliği katıyoruz.
          children: _list,
        ),
      ),
    );
  }
}
