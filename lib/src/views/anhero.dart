import 'package:flutter/material.dart';
import 'package:mulai/src/config/navigation.dart';

class AnHero extends StatelessWidget {
  final items = List<String>.generate(20, (i) => "Nomor Ke ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Navigations(),
        appBar: AppBar(title: Text('Text')),
        body: Container(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailHero(
                        title: item, img: 'assets/image/lisa.jpg', tag: '$index',);
                  }));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(20),
                            width: 100,
                            height: 100,
                            child: Hero(
                              tag: '$index',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                    image: AssetImage('assets/image/lisa.jpg')),
                              ),
                            )),
                        Text('$item')
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class DetailHero extends StatelessWidget {
  final String title;
  final String img;
  final String tag;

  DetailHero({Key key, @required this.title, @required this.img, @required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Container(
        width: 200,
        height: 200,
        child: Hero(
          tag: '$tag',
          child: Image(image: AssetImage('$img')),
        ),
      ),
    );
  }
}
