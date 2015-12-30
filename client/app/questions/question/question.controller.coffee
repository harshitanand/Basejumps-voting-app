'use strict'

angular.module 'project1App'
.controller 'QuestionCtrl', ($scope, $routeParams, $http) ->
  
  $scope.data = []
  $scope.canvote = false
  $('#addoption').hide()
  
  endpoint = '/api/things/'+$routeParams.id
  $http.get(endpoint).success (thing) ->
    $scope.data = thing.data
    if $scope?.data?.options.length isnt 0
      $scope.canvote = true

  $scope.moreoption = ->
    $('#addoption').toggle(1000)
    return false

  $scope.addoption = ->
    option =
      name: $scope.option
      votes: 0
    $scope.canvote = true
    $scope.data.options.push(option)

  $scope.vote = ->
    choice = $("input[name=ans]:checked").val()
    $scope.data.options.forEach (option)->
      if option.name is choice
        option.votes += 1
    $http.put endpoint,$scope.data

