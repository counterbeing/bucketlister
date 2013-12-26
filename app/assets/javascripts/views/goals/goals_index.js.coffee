class Bucketlister.Views.GoalsIndex extends Backbone.View
  template: JST['goals/index']

  events: 
    'submit #new_goal': 'createGoal'
    'click .mark-it': 'markGoal'

  initialize: -> 
    @collection.on('reset', @render, @)
    @collection.on('add', @appendIncompleteGoal, @)

  render: -> 
    incomplete = @collection.filterIncomplete()
    complete = @collection.filterComplete()
    $(@el).html(@template())
    incomplete.each(@appendIncompleteGoal)
    complete.each(@appendCompleteGoal)
    @

  createGoal: (goal) -> 
    event.preventDefault()
    @collection.create title: $("#goal_title").val(), description: $("#goal_description").val()
    $('#new_goal')[0].reset()

  markGoal: (goal) ->
    event.preventDefault()
    console.log goal

  appendIncompleteGoal: (goal) ->
    view = new Bucketlister.Views.IncompleteGoal(model: goal)
    $("#incomplete-goals").append(view.render().el)

  appendCompleteGoal: (goal) ->
    view = new Bucketlister.Views.CompleteGoal(model: goal)
    $("#completed-goals").append(view.render().el)
