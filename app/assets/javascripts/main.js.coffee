@restaurant = angular.module('restaurant', [])

@restaurant.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/places', {
      templateUrl: '../templates/places/index.html',
      controller: 'PlaceIndexCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])
