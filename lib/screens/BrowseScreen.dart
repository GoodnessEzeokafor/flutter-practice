import 'package:flutter/material.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Browse"),
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.looks_one), child: Text("Show A")),
              Tab(icon: Icon(Icons.looks_two), child: Text("Show B")),
              Tab(icon: Icon(Icons.looks_3), child: Text("Show C")),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  A(),
                  B(),
                  C(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  D(),
                  E(),
                  F(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  G(),
                  H(),
                  I(),
                ],
              ),
            ],
          )),
    );
  }

  Widget A() {
    return Text("Widget A");
  }

  Widget B() {
    return Text("Widget B");
  }

  Widget C() {
    return Text("Widget C");
  }

  Widget D(){
    return Text("Widget D");
  }

  Widget E(){
    return Text("Widget E");
  }

  Widget H(){
    return Text("Widget H");
  }
  
  Widget F(){
    return Text("Widget F");
  }
  
  Widget G(){
    return Text("Widget G");
  }
  
  Widget I(){
    return Text("Widget I");
  }
  
}
