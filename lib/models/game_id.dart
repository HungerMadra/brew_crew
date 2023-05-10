
// ignore_for_file: non_constant_identifier_names

class GameID {
  final String game_id; //Game ID
  final String home_team; //Home Team
  final String away_team; // Away Team 

  GameID({
    required this.game_id,
    required this.home_team,
    required this.away_team,
  });
}

class MarketNames {
  final String name;

  MarketNames({required this.name});

  @override
  String toString() {
    return 'MarketNames(name: $name)';
  }
}


