Omphalo.LightboxScreenView = Em.View.extend
  templateName: 'lightbox/screen'

  click: ->
    Omphalo.lightbox().set 'visible', false