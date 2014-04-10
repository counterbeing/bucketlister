window.Bucketlister =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    Bucketlister.router = new Bucketlister.Routers.Goals()
    Backbone.history.start()

$(document).ready ->
  Bucketlister.initialize()



# Any Extensions to backbone for use in the rest of the application
# are going here.
#
# This function accepts an element that has a data attribute defined on it
# this grabs the data attribute value of data-desired-nav, and navigates there.
#
Backbone.View::navToDesired = (e) ->
  location = $(e.currentTarget).data("desired-nav")
  Bucketlister.router.navigate(location, {trigger: true})
 

