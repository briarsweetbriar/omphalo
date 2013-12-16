Omphalo.UserThoughtsView = Ember.View.extend
  didInsertElement: ->
    @_super()
    @get('controller').bubbleTop()
    $(window).off( ".bubbler" )
    $(window).on "resize.bubbler scroll.bubbler", (e) =>
      setTimeout (=>
        if Omphalo.isScrolledIntoView $("#bubble_more")
          @get('controller').bubbleTop()
      ), 500