App.factory 'sharedService', ($rootScope) ->
  shared = {}

  shared.prepForBroadcast = (golf_ball, row) ->
    @message = golf_ball
    @brand = golf_ball.brand
    @row = row
    @broadcastItem()

  shared.broadcastItem = ->
    $rootScope.$broadcast('handleBroadcast')

  shared
