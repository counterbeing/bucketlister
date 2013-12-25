class Bucketlister.Routers.Goals extends Backbone.Router
  routes:
    '': 'index'
    'goals/:id': 'show'

  initialize: ->
    @collection = new Bucketlister.Collections.Goals()
    @collection.fetch({reset: true})

  index: ->
    view = new Bucketlister.Views.GoalsIndex(collection: @collection)
    $(".column .to-do").html(view.render().el) 

    
    # done_view = new Bucketlister.Views.GoalsIndex(collection: @completed_goals)
    # $(".column .done").html(done_view.render().el) 

  show: (id) ->
    alert "showing #{id}"

