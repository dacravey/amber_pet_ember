import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  breed: DS.attr('string'),
  chip_number: DS.attr('string'),
  age: DS.attr('string'),
  picture: DS.attr('string'),
  lost: DS.belongsTo('lost', {async: true})
});
