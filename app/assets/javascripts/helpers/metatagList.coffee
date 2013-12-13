Ember.Handlebars.helper 'metatagList', (metatags, options) ->
  new Handlebars.SafeString Omphalo.hashMetatags(metatags)