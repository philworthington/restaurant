@restaurant.controller 'PlaceIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.places = []
  $http.get('./places.json').success((data) ->
    $scope.places = data
  )
]
