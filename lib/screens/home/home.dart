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

//Inititalize firebaseAuth Instance
class _HomeState extends State<Home> {
  final user = FirebaseAuth.instance.currentUser!;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();

  // Create List to hold games
  List<GameID> games = [];
  List<String> idList = [];
  List<MarketNames> marketList = [];

  // Add a variable to hold the future result of getNbaGames()
  late Future<void> getNbaGamesFuture;

    @override
  void initState() {
    super.initState();
  // Call getNbaGames method when the widget is initialized
    getNbaGamesFuture = getNbaGames();
  }

 // Get NBA Markets Method
  Future<List<MarketNames>> getMarkets(List<dynamic> gameId) async {

    //Loop Through All The Game Id's In The List Of gameId
  for (var id in gameId) {

    //For each id get the api json market data associated with it 
    var response = await http.get(Uri.https('api.prop-odds.com', '/beta/markets/$id', {'api_key': 'hcvcwkpjlH2kRctVqMLZUZYfJZBJBqRyB4hTI1t4c'}));
    var jsonData = jsonDecode(response.body);

    //Loop throught the data and add the market names to a list 
      for (var marketNames in jsonData['markets']){
        MarketNames newName = MarketNames(
          name: marketNames['name']);
          marketList.add(newName);
      }
 }

    //Print Data For Error Detection 
      if (kDebugMode) {
      print(gameId.length);
      print(marketList.length); 
      print(marketList);
    }

    //Return List With Market Data 
    return marketList;
}

  // Get NBA Games
  Future<void> getNbaGames() async {
    var response = await http.get(Uri.https('api.prop-odds.com', '/beta/games/nba', {'date': '2023-04-26', 'tz': 'America/New_York', 'api_key': 'hcvcwkpjlH2kRctVqMLZUZYfJZBJBqRyB4hTI1t4c'}));
    var jsonData = jsonDecode(response.body);
    for (var game in jsonData['games']) {
      GameID newGame = GameID(
        game_id: game['game_id'],
        home_team: game['home_team'],
        away_team: game['away_team'],
      );

  // Adds GameId's To A List   
      idList.add(newGame.game_id);

  // Adds Games To A List    
      games.add(newGame);
    }  

  // Call getMarkets as an async Function  
    List<MarketNames> populatedMarkets = await getMarkets(idList);
  setState(() {
    marketList = populatedMarkets;
  });

  }

// Build App
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey.shade300,

    key: _scaffoldKey,

    // Drawer widget for displaying a side navigation menu
    drawer: MyDrawer(
      scaffoldKey: _scaffoldKey,
      logoutScaffoldKey: _logoutScaffoldKey,
    ),

    body: CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          // IconButton in the leading position to open the drawer
          leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            // IconButton in the trailing position
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_rounded),
              color: Colors.deepPurple,
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IconButton for sports category
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

        // SliverToBoxAdapter for displaying a single non-scrollable box child
        SliverToBoxAdapter(
          child: FutureBuilder(
            future: getNbaGamesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (marketList.isEmpty) {
                  // Display a message when no markets are available
                  return const Center(child: Text('No markets available'));
                } else {
                  // ListView.builder for displaying a list of markets
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: marketList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(marketList[index].name),
                            const Divider(),
                          ],
                        ),
                      );
                    },
                  );
                }
              } else {
                // Display a loading indicator while waiting for the future to complete
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    ),
  );
}

