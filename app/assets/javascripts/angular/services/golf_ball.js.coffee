App.factory 'GolfBall', ['$resource', ($resource) ->
  $resource 'api/v1/golf_balls/:id', id: '@id'
]
