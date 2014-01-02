@restaurant = angular.module('restaurant', [])

@restaurant.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/places', {
      templateUrl: '../templates/places/index.html',
      controller: 'PlaceIndexCtrl'
    }).
    when('/places/:id', {
      templateUrl: '../templates/places/show.html',
      controller: 'PlaceShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])
