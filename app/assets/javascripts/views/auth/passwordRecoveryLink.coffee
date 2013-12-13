Omphalo.AuthPasswordRecoveryLinkView = Em.View.extend
  templateName: 'auth/link'

  tagName: 'a'
  classNames: ['milli']
  attributeBindings: ['href']
  href: '/password_recovery'
  text: ''

  click:  (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    Omphalo.lightbox().send 'setContent', Omphalo.AuthPasswordRecoveryView.create()