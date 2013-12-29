class Bucketlister.Models.Goal extends Backbone.Model
  initialize: ->
    @on 'change:completed_at', ->
      console.log("completed at status has changed")

  markComplete: ->
    @save 'completed_at', moment().format()
    @

  markIncomplete: ->
    @save 'completed_at', ''
    @
