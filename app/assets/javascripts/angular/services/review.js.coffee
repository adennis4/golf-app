App.factory 'Review', ['$resource', ($resource) ->
  $resource 'api/v1/reviews/:id', id: '@id'
]
