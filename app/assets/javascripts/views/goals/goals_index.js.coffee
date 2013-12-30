class Bucketlister.Views.GoalsIndex extends Backbone.View
  template: JST['goals/index']

  events: 
    'submit #new_goal': 'createGoal'

  initialize: -> 
    @collection.on('reset', @render, @)
    @collection.on('add', @appendIncompleteGoal, @)

  render: -> 
    $("#goals-list").html('')
    incomplete = @collection.filterIncomplete()
    #complete = @collection.filterComplete()
    $(@el).html(@template())
    incomplete.each(@appendIncompleteGoal)
    #complete.each(@appendCompleteGoal)
    @

  createGoal: (goal) -> 
    event.preventDefault()
    @collection.create title: $("#goal_title").val(), description: $("#goal_description").val()
    $('#new_goal')[0].reset()

  appendIncompleteGoal: (goal) ->
    view = new Bucketlister.Views.IncompleteGoal(model: goal)
    $("#goals-list").append(view.render().el)

  appendCompleteGoal: (goal) ->
    view = new Bucketlister.Views.CompleteGoal(model: goal)
    $("#goals-list").append(view.render().el)
