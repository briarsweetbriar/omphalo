Omphalo.User = DS.Model.extend

  thoughts: DS.hasMany 'thought'
  name: DS.attr()
  slug: DS.attr()