import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imageList = [
    "https://www.simplyrecipes.com/thmb/RheeF949ewwGy7pxQQNt5v63Oi0=/720x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg",
    'https://media.istockphoto.com/photos/cheeseburger-with-tomato-and-lettuce-on-wooden-board-picture-id1309352410?b=1&k=20&m=1309352410&s=170667a&w=0&h=YduYl7Us5MSrw1EFSCxR9zDRLnEFa_O608NdqhHlSyM=',
    'https://www.tasteofhome.com/wp-content/uploads/2021/01/tasty-butter-chicken-curry-dish-from-indian-cuisine-1277362334.jpg',
    'https://www.thespruceeats.com/thmb/MumRfdA1gevlZn_JxeKZK7urVCE=/940x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/steamed-momos-wontons-1957616-hero-01-1c59e22bad0347daa8f0dfe12894bc3c.jpg',
    'https://www.tasteofhome.com/wp-content/uploads/2021/01/the-hyderabadi-chicken-biryani-is-photographed-at-akshaya-168918303.jpg',
    'https://www.tasteofhome.com/wp-content/uploads/2021/01/chicken-curry-with-rice-135585458.jpg',
    'https://www.tasteofhome.com/wp-content/uploads/2021/01/close-up-chole-bhature-served-at-table-552154819.jpg'
  ];
  final List<String> name = [
    'pizza',
    'burger',
    'Punjabi',
    'momos',
    'biryani',
    'pulav',
    'chole'
  ];

  List<Map> data = [
    {
      'name': 'Cheezy-7 Pizza',
      'price': '560',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://i.pinimg.com/originals/70/2a/e9/702ae99c22464810abaed6a920c8882a.jpg'
    },
    {
      'name': 'Vegan Tofu Tikka Masala',
      'price': '800',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://www.thespruceeats.com/thmb/I_M3fmEbCeNceaPrOP5_xNZ2xko=/3160x2107/filters:fill(auto,1)/vegan-tofu-tikka-masala-recipe-3378484-hero-01-d676687a7b0a4640a55be669cba73095.jpg'
    },
    {
      'name': 'Gulab Jaamun',
      'price': '300',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr06/18/17/enhanced-buzz-6223-1384813996-35.jpg'
    },
    {
      'name': 'Chole bhature',
      'price': '180',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr05/18/17/enhanced-buzz-orig-7491-1384813081-10.jpg'
    },
    {
      'name': 'Kati roll',
      'price': '70',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr01/18/17/enhanced-buzz-10832-1384814489-16.jpg'
    },
    {
      'name': 'Jalebi',
      'price': '150',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr03/18/17/enhanced-buzz-orig-23315-1384814320-22.jpg'
    },
    {
      'name': 'Cheezy-7 Pizza',
      'price': '560',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://i.pinimg.com/originals/70/2a/e9/702ae99c22464810abaed6a920c8882a.jpg'
    },
    {
      'name': 'Vegan Tofu Tikka Masala',
      'price': '800',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://www.thespruceeats.com/thmb/I_M3fmEbCeNceaPrOP5_xNZ2xko=/3160x2107/filters:fill(auto,1)/vegan-tofu-tikka-masala-recipe-3378484-hero-01-d676687a7b0a4640a55be669cba73095.jpg'
    },
    {
      'name': 'Gulab Jaamun',
      'price': '300',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr06/18/17/enhanced-buzz-6223-1384813996-35.jpg'
    },
    {
      'name': 'Chole bhature',
      'price': '180',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr05/18/17/enhanced-buzz-orig-7491-1384813081-10.jpg'
    },
    {
      'name': 'Kati roll',
      'price': '70',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr01/18/17/enhanced-buzz-10832-1384814489-16.jpg'
    },
    {
      'name': 'Jalebi',
      'price': '150',
      'favorite': false,
      'onClick': () {
        print('clicked');
      },
      'image':
          'https://img.buzzfeed.com/buzzfeed-static/static/2013-11/enhanced/webdr03/18/17/enhanced-buzz-orig-23315-1384814320-22.jpg'
    },
  ];

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
      ), //AppBar
      body: Column(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.all(15),
            child: CarouselSlider.builder(
              itemCount: imageList.length,
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: 300,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                reverse: false,
                aspectRatio: 5.0,
              ),
              itemBuilder: (context, i, id) {
                //for onTap to redirect to another screen
                return Container(
                    child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white,
                              )),
                          //ClipRRect for image border radius
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              imageList[i],
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          var url = imageList[i];
                          print(url.toString());
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      name[i],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0,
                          color: Colors.black87),
                    )
                  ],
                ));
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i) {
                return item(
                  data[i]['name'],
                  data[i]['price'],
                  data[i]['image'],
                  data[i]['onClick'],
                  (){
                    setState(() {
                      data[i]['favorite'] = !data[i]['favorite'];
                    });
                  },
                  data[i]['favorite'] ?? false,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
/*Widget item = Row(
  children: [
    CircleAvatar(
      radius: 25,
    ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
          Text('name'),
          Text('body'),
        ],
        ),
      ),
    ),
    IconButton(onPressed: (){}, icon: Icon(Icons.favorite), ),
  ],
);*/

Widget item(
  String name,
  String price,
  String image,
  Function()? onTap,
  Function()? onfav,
    bool favorite,
) =>
    ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(image),
      ),
      trailing: IconButton(
        onPressed: onfav,
        icon: Icon(favorite? Icons.favorite : Icons.favorite_border),
      ),
      title: Text(name),
      subtitle: Text(price),
    );
