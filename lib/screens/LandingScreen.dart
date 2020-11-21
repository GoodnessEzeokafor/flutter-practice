import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text("Landing Screen")
       ),
       body: const Text("Navigation"),
       drawer:Drawer(child: ListView(
         children:<Widget>[
          DrawerHeader(child: Stack(children:<Widget>[
            Image.network("https://cdn.shopify.com/s/files/1/1095/6418/files/gucci-logo.jpg?v=1481918145"),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                'Brand',
                style:Theme.of(context).textTheme.display1,
              ),
            ),
          ],)),
          ListTile(
            leading:const Icon(Icons.looks_one),
            title:const Text("Browse"),
            onTap:(){
              Navigator.pushNamed(context, "/browse");
            }
          ),
           ListTile(
            leading:const Icon(Icons.shopping_bag),
            title:const Text("Products"),
            onTap:(){
              Navigator.pushNamed(context, "/product");
            }
          ),
      
      
           ListTile(
            leading:const Icon(Icons.add_shopping_cart),
            title:const Text("Checkout"),
            onTap:(){
              Navigator.pushNamed(context, "/checkout");
            }
          ),
          
           
         ],
       )),
      //   body:Center(
      //     child: RaisedButton(
      //       child: Text("Go To Checkout"),
      //       onPressed:()=> Navigator.pushNamed(context,"/checkout"),
      //   )     
      // )
      
      );
  }
}
