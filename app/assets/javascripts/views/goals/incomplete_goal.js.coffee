class Bucketlister.Views.IncompleteGoal extends Backbone.View
  template: JST['goals/incomplete_goal']
  attributes:
    class: 'goal'

  events: 
    'click .mark-complete' : "markComplete"  

  markComplete: ->
    event.preventDefault()
    @model.markComplete()
    this.el.remove()
  

  render: -> 
    $(@el).html(@template(goal: @model))
    @

