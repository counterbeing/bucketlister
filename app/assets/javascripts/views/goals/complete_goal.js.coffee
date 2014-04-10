class Bucketlister.Views.CompleteGoal extends Backbone.View
  template: JST['goals/complete_goal']
  attributes:
    class: 'goal'
  render: -> 
    console.log 'resdering complete'
    $(@el).html(@template(goal: @model))
    @

