App.controller 'GolfBallsCtrl', ['$scope','sharedService', 'GolfBall', ($scope, sharedService, GolfBall) ->

  $scope.golf_balls = GolfBall.query ->
    $scope.selectedGolfBall = $scope.golf_balls[0]
    $scope.selectedRow = 0

  $scope.handleClick = (golf_ball, row) ->
    sharedService.prepForBroadcast golf_ball, row

  $scope.$on 'handleBroadcast', ->
    $scope.selectedGolfBall = sharedService.message
    $scope.selectedRow = sharedService.row
]
