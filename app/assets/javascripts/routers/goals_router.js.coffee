class Bucketlister.Routers.Goals extends Backbone.Router
  routes:
    '':           'thingsToDo'
    '_=_':        'thingsToDo' # facebook appends this after auth, like an idiot
    'todo':       'thingsToDo'
    'done':       'thingsDone'
    'goals/:id':  'show'

  initialize: ->
    @collection = new Bucketlister.Collections.Goals()
    @collection.fetch({reset: true})
    new Bucketlister.Views.GoalStats(collection: @collection)

  thingsToDo: ->
    view = new Bucketlister.Views.GoalsIndex(collection: @collection)
    $(".column .goals").html(view.render().el) 

  thingsDone: ->
    view = new Bucketlister.Views.CompleteGoalsIndex(collection: @collection)
    $(".column .goals").html(view.render().el) 


  show: (id) ->
    alert "showing #{id}"

