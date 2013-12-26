class Bucketlister.Views.IncompleteGoal extends Backbone.View
  template: JST['goals/incomplete_goal']
  attributes:
    class: 'goal'
  render: -> 
    $(@el).html(@template(goal: @model))
    @

