class Bucketlister.Views.CompleteGoalsIndex extends Backbone.View
  template: JST['goals/incomplete_index']
  
  initialize: -> 
    @collection.on('reset', @render, @)
    @collection.on('add', @appendIncompleteGoal, @)

  render: -> 
    $("#goals-list").html('')
    complete = @collection.filterComplete()
    $(@el).html(@template())
    complete.each(@appendCompleteGoal)
    @

  appendCompleteGoal: (goal) ->
      view = new Bucketlister.Views.CompleteGoal(model: goal)
      $("#goals-list").append(view.render().el)




