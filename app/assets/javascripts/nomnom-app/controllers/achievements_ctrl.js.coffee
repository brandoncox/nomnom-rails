App.controller 'AchievementsCtrl', ['$scope', 'Achievement', ($scope, Achievement) ->
  # Attributes accessible on the view
  $scope.selectedAchievement = null
  $scope.selectedRow        = null

  # Gather the screencasts and set the selected one to the first on success
  $scope.achievements = Achievement.query ->
    $scope.selectedAchievement = $scope.achievements[0]
    $scope.selectedRow = 0

  # Set the selected screencast to the one which was clicked
  $scope.showAchievement = (achievement, row) ->
    $scope.selectedAchievement = achievement
    $scope.selectedRow = row
]