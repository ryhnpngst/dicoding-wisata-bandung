import 'package:flutter/material.dart';
import 'package:wisata_bandung/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  final TourismPlace place;
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');


  DetailScreen({required this.place});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(  
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back, 
                              color: Colors.white,
                            ), 
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text( 
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(  
                  fontSize: 30,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8,),
                      Text(  
                        place.openDays,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8,),
                      Text(  
                        place.openTime,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8,),
                      Text(
                        place.ticketPrice,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(  
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(  
                  fontSize: 16,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(  
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url){
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: ClipRRect(  
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override  
  // Widget build(BuildContext context){
  //   return Scaffold(
  //     body: SingleChildScrollView(  
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: <Widget> [
  //           Image.asset('images/farm-house.jpg'),
  //             Container(
  //               margin: EdgeInsets.only(top: 16),
  //               child: Text(
  //                 'Farm House Lembang',
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(  
  //                   fontSize: 30,
  //                   fontFamily: 'Staatliches',
  //                 ),
  //               )
  //             ),
  //             Container(  
  //               margin: EdgeInsets.symmetric(vertical: 16),
  //               child: Row(  
  //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: <Widget> [
  //                   Column(
  //                     children: <Widget> [
  //                       Icon(Icons.calendar_today),
  //                       SizedBox(height: 8),
  //                       Text(
  //                         'Open Everyday',
  //                         style: informationTextStyle,
  //                       ),
  //                     ], 
  //                   ),
  //                   Column(
  //                     children: <Widget> [
  //                       Icon(Icons.access_time),
  //                       SizedBox(height: 8),
  //                       Text(
  //                         '09:00-20:00',
  //                         style: informationTextStyle,
  //                       ),
  //                     ],
  //                   ),
  //                   Column(
  //                     children: <Widget> [
  //                       Icon(Icons.monetization_on),
  //                       SizedBox(height: 8),
  //                       Text(
  //                         'RP 25.000',
  //                         style: informationTextStyle,
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Container(
  //               padding: EdgeInsets.all(16),
  //               child: Text(
  //                 'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(fontSize: 16),
  //               ),
  //             ),
  //             Container(
  //               height: 150,
  //               child: ListView(
  //                 scrollDirection: Axis.horizontal,
  //                 children: <Widget>[
  //                 Padding(
  //                   padding: const EdgeInsets.all(4.0),
  //                   child: ClipRRect(  
  //                     borderRadius: BorderRadius.circular(10),
  //                     child: Image.network(
  //                     'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(4.0),
  //                   child: ClipRRect(  
  //                     borderRadius: BorderRadius.circular(10),
  //                     child: Image.network(
  //                     'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(4.0),
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.circular(10),
  //                     child: Image.network(
  //                     'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ), 
  //     ),
  //   );
  // }
}

class FavoriteButton extends StatefulWidget{
  @override  
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;

  @override  
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        isFavorite? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}