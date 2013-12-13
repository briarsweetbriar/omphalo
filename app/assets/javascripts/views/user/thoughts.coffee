Omphalo.UserThoughtsView = Ember.View.extend
  didInsertElement: ->
    @_super()
    @get('controller').bubbleTop()