import 'package:flutter/material.dart';
import 'package:flutterlistviewheadersample/soccer_player_info.dart';

class MyListViewScreen extends StatefulWidget {
  @override
  _MyListViewScreenState createState() => _MyListViewScreenState();
}

class _MyListViewScreenState extends State<MyListViewScreen> {

  List<SoccerPlayerInfo> listSoccerPlayers = [];
  int VIEW_TYPE_CLUB = 1;
  int VIEW_TYPE_PLAYER = 2;

  @override
  Widget build(BuildContext context) {

    listSoccerPlayers = [];
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_CLUB,"Real Madrid"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Sergio Ramos"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Karim Benzema"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_CLUB,"Barcelona"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Lionel Messi"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_CLUB,"Bayern Munich"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Robert Lewandowski"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Manuel Neuer"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_CLUB,"Manchester City"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Kevin De Bruyne"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Sergio Aguero"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_CLUB,"Paris Saint-Germain"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Neymar Jr."));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Kylian Mbappé"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_CLUB,"Liverpool"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Virgil van Dijk"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Mohamed Salah"));
    listSoccerPlayers.add(SoccerPlayerInfo(VIEW_TYPE_PLAYER,"Sadio Mané"));

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ListView Different Items'),
      ),
      body: ListView.builder(
        itemCount: listSoccerPlayers.length,
        itemBuilder: (context, index) {
          SoccerPlayerInfo soccerPlayerInfo = listSoccerPlayers[index];

          if (soccerPlayerInfo.viewType == VIEW_TYPE_CLUB) {
            return ListTile(
              title: Text(
                soccerPlayerInfo.playerOrClubName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            );
          } else if (soccerPlayerInfo.viewType == VIEW_TYPE_PLAYER) {
            return ListTile(
              title: Text(soccerPlayerInfo.playerOrClubName,
                  style: TextStyle(fontSize: 25)
              ),
            );
          }
        },
      ),
    );
  }
}
