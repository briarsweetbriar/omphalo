Omphalo.UsersRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'user'
  setupController: (controller, model) ->
    controller.set('content', model)