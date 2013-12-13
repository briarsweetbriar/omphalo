Omphalo.Thought = DS.Model.extend

  user: DS.belongsTo 'user'
  metatags: DS.hasMany 'metatag'
  description: DS.attr()
  createdAt: DS.attr()
  updatedAt: DS.attr()
  stimulation: 0
  bubbledAt: 0
  visible: false
  count: 0