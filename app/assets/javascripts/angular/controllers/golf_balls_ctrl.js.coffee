App.controller 'GolfBallsCtrl', ['$scope','GolfBall', ($scope, GolfBall) ->
  $scope.selectedGolfBall = null
  $scope.selectedRow = null

  $scope.golf_balls = GolfBall.query ->
    $scope.selectedGolfBall = $scope.golf_balls[0]
    $scope.selectedRow = 0

  $scope.showGolfBall = (golf_ball, row) ->
    $scope.selectedGolfBall = golf_ball
    $scope.selectedRow = row
]
