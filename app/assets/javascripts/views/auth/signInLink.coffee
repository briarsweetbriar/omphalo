Omphalo.AuthSignInLinkView = Em.View.extend
  templateName: 'auth/link'

  tagName: 'a'
  attributeBindings: ['href']
  href: '/sign_in'
  text: ''

  click:  (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    Omphalo.lightbox().send 'setContent', Omphalo.AuthSignInView.create()