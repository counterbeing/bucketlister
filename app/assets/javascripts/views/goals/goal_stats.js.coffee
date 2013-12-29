class Bucketlister.Views.GoalStats extends Backbone.View
  template: JST['goals/goal_stats']
  el: "#goal-stats"
  initialize: -> 
    @collection.on 'reset', @render, @      

  render: -> 
    incomplete = @collection.filterIncomplete().length
    complete = @collection.filterComplete().length
    $(@el).html(@template(incomplete: incomplete, complete: complete))
    @

