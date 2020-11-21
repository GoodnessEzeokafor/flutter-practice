import 'package:flutter/material.dart';
import 'package:flutterroutes/screens/BrowseScreen.dart';
import 'package:flutterroutes/screens/CheckoutScreen.dart';
import 'package:flutterroutes/screens/LandingScreen.dart';
import 'package:flutterroutes/screens/ViewProductScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  MyApp({Key key}) : super(key : key);
  @override
  _MyApp createState() => _MyApp();
}


class _MyApp extends State{

  var _currentPage = 0;
  var _pages = [
    Text("Page 1 - Announcements"),
    Text("Page 2 - Birthdays"),
    Text("Page 3 - Data")
  ];



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(length: 3, 
      child: Scaffold(
        appBar:AppBar(
          title:Text("Flutter Playground"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon:Icon(Icons.announcement)
              ),
              Tab(
                icon:Icon(Icons.cake)
              ),
              Tab(
                      icon:Icon(Icons.cloud)
              ),
            ],
          ),
        ),
        body: TabBarView(children:<Widget>[
          Center(
              child: Text("Announcement"),
          ),
          Center(
              child: Text("Birthdays"),
          ),
          Center(
              child: Text("Data"),
          ),
        ]),

      )),
    );
  } 
}











  //  return MaterialApp(
  //     title: "Flutter Practice",
  //     home: Scaffold(
  //       body:Center(
  //         child: _pages.elementAt(_currentPage),
  //       ),
  //       bottomNavigationBar: BottomNavigationBar(
  //         items: [
  //           BottomNavigationBarItem(
  //             icon:Icon(Icons.announcement),
  //             title:Text("Announcements")
  //           ),
  //           BottomNavigationBarItem(
  //             icon:Icon(Icons.cake),
  //             title:Text("Birthdays")
  //           ),
  //           BottomNavigationBarItem(
  //             icon:Icon(Icons.cloud),
  //             title:Text("Data")
  //           ),
  //         ],
  //         currentIndex: _currentPage,
  //         fixedColor: Colors.red,
  //         onTap: (int inIndex){
  //           setState((){
  //             _currentPage = inIndex;
  //           });
  //         },
  //       ),
  //     ),
  //   );
 
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Playground',
//       // initialRoute:'/',
//       // routes:{
//       //   "/":(BuildContext context) => LandingScreen(),
//       //   "/browse":(BuildContext context) => BrowseScreen(),
//       //   "/product":(BuildContext context) => ViewProductScreen(),
//       //   "/checkout":(BuildContext context) => CheckoutScreen()
//       // },

//       home:Scaffold(
//         appBar: AppBar(
//           title:Text("Flutter")
//         ),
//         drawer: Drawer(
//           child: Column(
//             children:<Widget>[
//                 Text("Item 1"),
//                 Divider(),
//                 Text("Item 2"),
//                 Divider(),
//                 Text("Item 3")
//             ],
//           ),
//         ),
//         body:Center(
//           child:Row(
//             children:<Widget>[
//               Text("Child 1"),
//               Text("Child 2 "),
//               Text("Child 3")
//             ],
//           ),
//         )
//         // body: Center(
//         //   child: Card(
//         //     child:Column(
//         //       mainAxisSize: MainAxisSize.min,
//         //       children:<Widget>[
//         //         Text("Child 1"),
//         //         Divider(),
//         //         Text("Child 2"),
//         //         Divider(),
//         //         Text("Child3")
//         //       ],
//         //     ),
//         //   )
          
//         //   // Column(
//         //   //   children:<Widget>[
//         //   //     Text("Child 1"),
//         //   //     Divider(),
//         //   //     Text("Child 2"),
//         //   //     Divider(),
//         //   //     Text("Child 3")
//         //   //   ],
//         //   // ),
//         // ),
     
     
//       ),
    
      
      
//       // theme: ThemeData(
//       //   // This is the theme of your application.
//       //   //
//       //   // Try running your application with "flutter run". You'll see the
//       //   // application has a blue toolbar. Then, without quitting the app, try
//       //   // changing the primarySwatch below to Colors.green and then invoke
//       //   // "hot reload" (press "r" in the console where you ran "flutter run",
//       //   // or simply save your changes to "hot reload" in a Flutter IDE).
//       //   // Notice that the counter didn't reset back to zero; the application
//       //   // is not restarted.
//       //   primarySwatch: Colors.blue,
//       //   // This makes the visual density adapt to the platform that you run
//       //   // the app on. For desktop platforms, the controls will be smaller and
//       //   // closer together (more dense) than on mobile platforms.
//       //   visualDensity: VisualDensity.adaptivePlatformDensity,
//       // ),
//       // home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
