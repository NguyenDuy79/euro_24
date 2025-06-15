class NetworkUrl {
  //API key
  static const String apiKey =
      "IboUssbG6kA19G4tw6Yv8lT9NQtLybsIuowe2Wq5DzYlmExK3jXehRAlzDDU";

  //Base URLs
  static const String baseUrl = 'https://api.sportmonks.com';
  static const String baseNewUrl = 'http://45.117.177.53';
  //Main Path URL
  static const String mainPath = '/v3/football/';
  static const String mainNewPath = '/news/';
  //Params
  static const String apiToken = 'api_token';
  static const String include = 'include';
  static const String filter = 'filters';
  static const String select = 'select';
  static const String perPage = 'per_page';
  static const String page = 'page';
  static const String order = 'order';

  //Main Key Query

  //Fixture
  static const String fixture = 'fixtures';
  static const String fixtureScore = 'fixtures.scores';
  static const String fixtureParticipants = 'fixtures.participants';

  //Player
  static const String player = 'player';
  static const String playerCountry = 'player.country';
  //Round
  static const String round = 'rounds';
  // Group
  static const String groups = 'groups';
  static const String group = 'group';
  // Participants
  static const String participant = 'participant';
  //Type
  static const String seasonTopscorerTypes = 'seasonTopscorerTypes';
  static const String standingDetailTypes = 'standingDetailTypes';
  //Details
  static const String details = 'details';
  //Endpoint URL
  static String getTeams(int? seasonId) => 'teams/seasons/${seasonId ?? ''}';
  static String getSeason(int? seasonId) => 'seasons/${seasonId ?? ''}';
  static String getTopscorersBySeason(int? seasonId) =>
      'topscorers/seasons/${seasonId ?? ''}';
  static String getRounds(int? seasonId) => 'rounds/seasons/${seasonId ?? ''}';
  static String getStanding(int? roundId) =>
      'standings/rounds/${roundId ?? ''}';
}
