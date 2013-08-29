App.controller 'ReviewsCtrl', ['$scope', 'sharedService', 'Review', ($scope, sharedService, Review) ->

  $scope.brand = 'Titleist'

  $scope.reviews = Review.query ->
    $scope.selectedReviews = $scope.reviews

  $scope.$on 'handleBroadcast', ->
    $scope.brand = sharedService.brand
]
