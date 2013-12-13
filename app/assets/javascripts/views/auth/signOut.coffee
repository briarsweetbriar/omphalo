Omphalo.AuthSignOutView = Em.View.extend
  templateName: 'auth/signOut'

  click: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    @get('context').auth.signOut
      success: ->
        Omphalo.setFlash("Sign out successful.", 'notice')
        document.location.href="/"