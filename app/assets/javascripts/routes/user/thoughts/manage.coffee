Omphalo.UserThoughtsManageRoute = Ember.Route.extend
  model: (params) ->
    @store.findQuery 'thought',
      user_id: @modelFor('user').get('id')
  setupController: (controller, model) ->
    controller.set('content', model)
  renderTemplate: ->
    @render "user/thoughts/manage",
      outlet: "manageList"
      into: "user"
      controller: "userThoughtsManage"