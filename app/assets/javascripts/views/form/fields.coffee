Omphalo.TextField = Em.TextField.extend(
  attributeBindings: ['accept', 'autocomplete', 'autofocus', 'name', 'required']
)
Omphalo.Checkbox = Em.Checkbox.extend()
Omphalo.Select = Em.Select.extend()

Omphalo.TextArea = Em.View.extend
  templateName: 'form/textArea'

  buttonBarId: ""
  inputId: ""
  placeholder: ""
  value: null

  random: 0

  init: ->
    @set('random', Math.floor(Math.random() * (999999 - 100000 + 1)) + 100000)
    @set('buttonBarId', 'wmd-button-bar-' + @get('random'))
    @set('inputId', 'wmd-input-' + @get('random'))
    @_super()

  didInsertElement: ->
    editor = new Markdown.Editor(markdown, '-'+ @get('random'))
    editor.run()