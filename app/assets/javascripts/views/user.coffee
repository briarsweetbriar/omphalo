Omphalo.UserView = Ember.View.extend
  didInsertElement: ->
    @_super()
    if @get('controller').auth.get('user') == @get('controller.content')
      @get('controller').set('userCanAddThought', true)
    else
      @get('controller').set('userCanAddThought', false)