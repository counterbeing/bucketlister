class Bucketlister.Routers.Goals extends Backbone.Router
  routes:
    '': 'thingsToDo'
    '_=_': 'thingsToDo' # facebook appends this after auth, like an idiot
    'goals/:id': 'show'

  initialize: ->
    @collection = new Bucketlister.Collections.Goals()
    @collection.fetch({reset: true})
    new Bucketlister.Views.GoalStats(collection: @collection)

  thingsToDo: ->
    view = new Bucketlister.Views.GoalsIndex(collection: @collection)
    $(".column .to-do").html(view.render().el) 

  show: (id) ->
    alert "showing #{id}"

