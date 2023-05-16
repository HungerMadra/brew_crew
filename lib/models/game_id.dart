
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
  final String timestamp;
  final double handicap;
  final int odds;
  final String name;
  final String description;

  MarketNames({
    required this.timestamp,
    required this.handicap,
    required this.odds,
    required this.name,
    required this.description,
  });

  @override
  String toString() {
    return 'MarketNames(timestamp: $timestamp, handicap: $handicap, odds: $odds, name: $name, description: $description)';
  }
}





