@restaurant.controller 'PlaceShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./places/#{$routeParams.id}.json").success((data) ->
    $scope.place = data
  )
]
