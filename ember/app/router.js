import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

export default Router.map(function() {
  this.resource('pets', function() {
    this.route('index');
    this.route('show', {path: ':pet_id'});
    this.route('new', {path: 'new'});
  });
  this.resource('login', function() {
    this.route('login');
  });
  this.resource('users', function() {
    this.route('new');
  });
});
