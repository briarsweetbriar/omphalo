Omphalo.FlashView = Em.View.extend
  templateName: 'core/flash'
  classNames: ['ember-flash-container']
  
  content: ""
  flashType: ""

  click: ->
    Omphalo.clearFlash()