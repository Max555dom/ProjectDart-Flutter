import 'package:flutter/material.dart';
import 'package:formation/Services/Netflix_services.dart';

class HomePage extends StatelessWidget {
  NetflixService _netflixService = NetflixService();

  @override
  Widget build(BuildContext context) {
    _netflixService.getNetflixApi();
    //print(_netflixService);

    return Container(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<dynamic>(
            future: _netflixService.getNetflixApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print('valeur image : ${snapshot.data.image}');
                return Column(children: <Widget>[
                  Text("\n \n Nom : " + snapshot.data.name),
                  Text("Slug : " + snapshot.data.slug),
                  Text("Season : " + snapshot.data.season),
                  Text("\n Description : " + snapshot.data.description + "\n"),
                  Image.network(snapshot.data.image)
                ]);
              }
            }));
  }
}
