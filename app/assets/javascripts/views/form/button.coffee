Omphalo.Button = Ember.View.extend

  tagName: 'input'
  classNames: ['btn']
  attributeBindings: ['type', 'value', 'disabled']
  type: 'submit'
  value: "Submit"
  submitting: false
  disabled: (->
    @submitting
  ).property('submitting')