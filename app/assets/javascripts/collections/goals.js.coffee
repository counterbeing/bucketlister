class Bucketlister.Collections.Goals extends Backbone.Collection
  url: '/api/goals'
  model: Bucketlister.Models.Goal

  filterIncomplete: ->
    results = @where({completed_at: null})
    new Bucketlister.Collections.Goals(results)

  filterComplete: ->
    results = @reject( (model) -> model.get('completed_at') == null )
    new Bucketlister.Collections.Goals(results)

