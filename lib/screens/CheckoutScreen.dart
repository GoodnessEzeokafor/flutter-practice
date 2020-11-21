import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout Screen")),
      body: Center(
        child: RaisedButton(
            child: const Text("I am a button. Press me"),
            onPressed: () async{
               String response = await  showDialog<String>(
              context: context,
              builder:(BuildContext context){
                  return AlertDialog(
                    content: const Text("Are you Sure? "),
                    actions:<Widget>[
                      FlatButton(
                        onPressed:() => Navigator.pop(context, 'Yes'),                          child: const Text("Yes"),
                          ),

                      FlatButton(
                        onPressed:() => Navigator.pop(context, 'No'), 
                        child: const Text("No"))
                    ],
                  );
              }
              // builder: (BuildContext context){
              //   return AlertDialog(
              //     content: const Text("Press OK to checkout"),
              //     actions:<Widget>[
              //       FlatButton(
              //           onPressed: () => Navigator.pop(context), 
              //           child: const Text("OK")
              //         )
              //     ],
              //   );
              // }
            );
            print(response);
            }
             
        ),
      ),
    );
  }
}


// flutter run --release