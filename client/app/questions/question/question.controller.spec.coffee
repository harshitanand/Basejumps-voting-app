'use strict'

describe 'Controller: QuestionCtrl', ->

  # load the controller's module
  beforeEach module 'project1App'
  QuestionCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    QuestionCtrl = $controller 'QuestionCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
