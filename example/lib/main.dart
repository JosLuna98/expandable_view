import 'package:expandable_view/expandable_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageView(
      children: <Widget>[
        Scaffold(
          body: Stack(
            children: <Widget>[
              Image.asset(
                "assets/map.png",
                width: size.width,
                height: size.height,
                fit: BoxFit.cover,
              ),
              ExpandableView(
                title: "Lugares",
                icon: Icons.location_on,
                child: textColum,
              ),
            ],
          ),
        ),
        Scaffold(
          appBar: AppBar(),
          body: Stack(
            children: <Widget>[
              Image.asset(
                "assets/map.png",
                width: size.width,
                height: size.height,
                fit: BoxFit.cover,
              ),
              ExpandableView(
                hasAppBar: true,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [
                    Colors.yellow,
                    Colors.red,
                  ],
                ),
                icon: Icons.location_on,
                child: textColum,
              ),
            ],
          ),
        ),
        SafeArea(
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/map.png",
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.cover,
                ),
                ExpandableView(
                  hasSafeArea: true,
                  title: "Lugares",
                  color: Colors.blue,
                  icon: Icons.location_on,
                  child: textColum,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/map.png",
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.cover,
                ),
                ExpandableView(
                  hasSafeArea: true,
                  hasAppBar: true,
                  title: "Lugares",
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [
                      Colors.pink,
                      Colors.purple,
                    ],
                  ),
                  icon: Icons.location_on,
                  child: textColum,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  final Widget textColum = Column(
    children: <Widget>[
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "ffdsfdssdsddsgdsgdsgdgdsgdsgdsgsgdsgdsgdsgdsgdsgdsggdsgdsgds",
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
