import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product_page extends StatefulWidget {
  const product_page({Key? key}) : super(key: key);

  @override
  _product_pageState createState() => _product_pageState();
}

class _product_pageState extends State<product_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Food baba"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        //<Widget>[]
        backgroundColor: Colors.black,
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        //IconButton
        brightness: Brightness.dark,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.network(
                'https://www.simplyrecipes.com/thmb/RheeF949ewwGy7pxQQNt5v63Oi0=/720x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg'),
          ),
          Text(
            'Pizza',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                color: Colors.black87),
          )
        ],
      ),
    ));
  }
}
