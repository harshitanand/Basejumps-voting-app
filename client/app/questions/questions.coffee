'use strict'

angular.module 'project1App'
.config ($routeProvider) ->
  $routeProvider

    .when '/questions',
      templateUrl: 'app/questions/questions.html'
      controller: 'QuestionsCtrl'
      authenticate: true

    .when '/question/:id',
      templateUrl: 'app/questions/question/question.html'
      controller: 'QuestionCtrl'
      authenticate: true
