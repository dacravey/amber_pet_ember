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
  this.resource('losts', function() {
    this.route('index');
    this.route('show', {path: ':lost_id'});
    this.route('new', {path: 'new'});
  });
  this.resource('findings', function() {
    this.route('index');
    this.route('show', {path: ':finding_id'});
    this.route('new', {path: 'new'});
  });
});
