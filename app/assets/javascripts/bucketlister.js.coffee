window.Bucketlister =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new Bucketlister.Routers.Goals()
    Backbone.history.start()

$(document).ready ->
  Bucketlister.initialize()
