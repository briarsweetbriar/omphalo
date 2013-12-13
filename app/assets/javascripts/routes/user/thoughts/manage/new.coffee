Omphalo.UserThoughtsManageNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('thought')
  setupController: (controller, model) ->
    controller.set('content', model)
  deactivate: ->
    @get('controller.content').rollback()
  renderTemplate: ->
    @render "user/thoughts/manage/new",
      outlet: "thoughtForm"
      into: "user"
      controller: "userThoughtsManageNew"