import DS from 'ember-data';

export default DS.Model.extend({
  username: DS.attr('string'),
  firstname: DS.attr('string'),
  lastname: DS.attr('string'),
  address: DS.attr('string'),
  phone: DS.attr('string'),
  email: DS.attr('string'),
  password: DS.attr('string'),
  password_confirmation: DS.attr('string')
});



//
// import DS from 'ember-data';
//
// var attr = DS.attr;
//
// var User = DS.Model.extend({
//   username: DS.attr('string'),
//   firstname: DS.attr('string'),
//   lastname: DS.attr('string'),
//   address: DS.attr('string'),
//   phone: DS.attr('string'),
//   email: DS.attr('string'),
//   password: DS.attr('string'),
//   password_confirmation: DS.attr('string'),
//   pets: DS.hasMany('pet', { async: true })
// });
//
// export default User;
