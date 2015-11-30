'use strict'

angular.module 'project1App'
.controller 'QuestionsCtrl', ($scope, $location, socket, $http) ->

  $http.get('/api/things').success (awesomeThings) ->
    $scope.awesomeThings = awesomeThings
    socket.syncUpdates 'thing', $scope.awesomeThings

  $scope.question =(thing)->
    $location.path '/question/'+thing._id
