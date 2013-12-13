Omphalo.UserThoughtsManageEditRoute = Ember.Route.extend
  model: (params, queryParams, transition) ->
    @store.find('thought', params.thought_id)
  afterModel: (model) ->
    description = model.get 'description'
    metatags = model.get('metatags.content')
    description += Omphalo.hashMetatags(metatags)
    model.set('description', description)
  setupController: (controller, model) ->
    controller.set('content', model)
  deactivate: ->
    @get('controller.content').rollback()
  renderTemplate: ->
    @render "user/thoughts/manage/edit",
      outlet: "thoughtForm"
      into: "user"
      controller: "userThoughtsManageEdit"