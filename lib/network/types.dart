enum Types {
  goalScorers(208, 'Goal Topscorer'),
  allWins(130, 'All Wins'),
  allDraw(131, 'All Draws'),
  allLost(132, 'All Lost'),
  allGoalsFor(133, 'ALl Goals For'),
  allGoalsAgainst(134, 'All Goals Against'),
  goalsDifference(179, 'Goals Difference');

  final int id;
  final String description;

  const Types(this.id, this.description);
}
