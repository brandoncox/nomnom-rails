App.controller 'ProfileCtrl', ['$scope', 'Profile', ($scope, Profile) ->
  $scope.profile = 	Profile.query()
]