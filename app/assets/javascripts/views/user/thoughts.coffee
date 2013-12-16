Omphalo.UserThoughtsView = Ember.View.extend
  didInsertElement: ->
    @_super()
    @get('controller').bubbleTop()
    clearInterval bubblerID
    bubblerID = window.setInterval (=>
      if Omphalo.isScrolledIntoView($("#bubble_more")) && @get('controller')
        @get('controller').bubbleTop()
        return
    ), 1000