Omphalo.AuthRegisterLinkView = Em.View.extend
  templateName: 'auth/link'

  tagName: 'a'
  attributeBindings: ['href']
  href: '/register'
  text: ''

  click:  (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    Omphalo.lightbox().send 'setContent', Omphalo.AuthRegisterView.create()