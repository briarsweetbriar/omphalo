Omphalo.randomInt = (min, max) ->
  Math.floor(Math.random() * (max - min + 1)) + min

Omphalo.lightbox = ->
  Ember.View.views[$(".ember-lightbox").attr('id')]

Omphalo.flash = ->
  Ember.View.views[$(".ember-flash-container").attr('id')]

Omphalo.setFlash = (content, flashType) ->
  flash = Omphalo.flash()
  flash.set('content', content)
  flash.set('flashType', flashType)
  flash.rerender()
  setTimeout("Omphalo.clearFlash()", 30000);

Omphalo.clearFlash = ->
  flash = Omphalo.flash()
  flash.set('content', '')
  flash.set('flashType', '')
  flash.rerender()

Omphalo.hashMetatags = (metatags) ->
  if metatags
    list = ""
    for metatag in metatags
      list += "#"+metatag.get('name')
    return list

String::toPath = ->
  newString = @replace /([A-Z])/g, ($1) ->
    "/" + $1.toLowerCase()
  newString.replace(/::/g, '')

String::doterize = ->
  @replace /([A-Z])/g, ($1) ->
    return "." + $1.toLowerCase()