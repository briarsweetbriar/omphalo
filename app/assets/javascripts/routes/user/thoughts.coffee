Omphalo.UserThoughtsRoute = Ember.Route.extend
  model: (params) ->
    @store.findQuery 'thought',
      user_id: @modelFor('user').get('id')
  setupController: (controller, model) ->
    controller.set('user', @modelFor('user'))
    controller.set('content', model)