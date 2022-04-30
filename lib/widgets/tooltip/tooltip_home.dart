import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class TooltipHome extends StatefulWidget {
  const TooltipHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<TooltipHome> createState() => _TooltipHomeState();
}

class _TooltipHomeState extends State<TooltipHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: //koyduğumuz resim için açıklama eklememizi sağlar.resmin üzerine uzun basıldığında mesajı gösterir
            Tooltip(
                //aynı şekilde resim dışında icon içinde tooltip ile sarmaladığımızda açıklama ekleyebiliriz
                message: 'Buraya istediğini yazabilirsiniz',
                child: Image.network(resim400)),
      ),
    );
  }
}
