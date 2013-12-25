class Bucketlister.Views.Goal extends Backbone.View
  template: JST['goals/goal']
  attributes:
    class: 'goal'
  render: -> 
    $(@el).html(@template(goal: @model))
    @

