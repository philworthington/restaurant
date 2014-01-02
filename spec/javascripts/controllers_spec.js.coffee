describe "Restaurant controllers", ->
  beforeEach module("restaurant")

  describe "PlaceIndexCtrl", ->
    it "should set places to an empty array", inject(($controller) ->
      scope = {}
      ctrl = $controller("PlaceIndexCtrl",
        $scope: scope
      )
      expect(scope.places.length).toBe 0
    )
