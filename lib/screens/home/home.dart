import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../models/game_id.dart';
import '../../services/drawer.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  // Added a named parameter key to the constructor
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user = FirebaseAuth.instance.currentUser!;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();

  // Create List to hold games
  List<GameID> games = [];

  // Get NBA Games
  Future<void> getNbaGames() async {
    var response = await http.get(Uri.https('api.prop-odds.com', '/beta/games/nba', {'date': '2023-04-25', 'tz': 'America/New_York', 'api_key': 'hcvcwkpjlH2kRctVqMLZUZYfJZBJBqRyB4hTI1t4c'}));
    var jsonData = jsonDecode(response.body);
    for (var game in jsonData['games']) {
      GameID newGame = GameID(
        game_id: game['game_id'],
        home_team: game['home_team'],
        away_team: game['away_team'],
      );
      games.add(newGame);
    }
    if (kDebugMode) {
      print(games.length);
    }
  }


@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey.shade300,

    key: _scaffoldKey,

    drawer: MyDrawer(
      scaffoldKey: _scaffoldKey,
      logoutScaffoldKey: _logoutScaffoldKey,
    ),

    body: CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_rounded),
              color: Colors.deepPurple,
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sports_basketball),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sports_soccer),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sports_martial_arts),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sports_football),
                ),
              ),
            ],
          ),
        ),

          SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FutureBuilder(
                    future: getNbaGames(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: games.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(games[index].home_team),
                              subtitle: Text(games[index].away_team),
                            );
                          },
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
      ],
    ),
  );
}
}