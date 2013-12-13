Omphalo.UserThoughtsManageNewController = Ember.ObjectController.extend
  
  errors: []

  actions:
    submit: (event, view) ->
      @get('model').save().then ((response) =>
        Omphalo.setFlash("Thought successfully submitted.", 'notice')
        @transitionToRoute('user.thoughts.manage')
      ), (response) =>
        @set "errors", response.errors