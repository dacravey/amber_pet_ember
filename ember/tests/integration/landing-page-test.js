import Ember from 'ember';
import { module, test, skip } from 'qunit';
import startApp from '../helpers/start-app';
import Pretender from 'pretender';

var App, server;

module('Integration - Landing Page', {
  beforeEach: function() {
    App = startApp();

    var pets = [
    {
    id: 1,
    name: 'Bugs Bunny',
    description: 'fluffy',
    age: '5',
    breed: 'Collie',
    user_id: '2',
    chip_number: '23431'
    },
    {
    id: 2,
    name: 'Fido',
    description: 'snarly',
    age: '5',
    breed: 'poodle',
    user_id: '3',
    chip_number: '85945'
    },
    {
    id: 3,
    name: 'Joel',
    description: 'shy',
    age: '1',
    breed: 'Maine Coone',
    user_id: '3',
    chip_number: '89742'
    }
    ];

    server = new Pretender(function() {
      this.get('/api/pets', function(request) {
        return [200, {"Content-Type": "application/json"}, JSON.stringify({pets: pets})];
      });

      this.get('/api/pets/:id', function(request) {
        var pet = pets.find(function(pet) {
          if (pet.id === parseInt(request.params.id, 10)) {
            return pet;
          }
        });
        return [200, {"Content-Type": "application/json"}, JSON.stringify({pet: pet})];
      });
    });
  },

  afterEach: function() {
    Ember.run(App, 'destroy');
    server.shutdown();
  }
});



test('Should welcome me to Amber Pet', function(assert) {
  visit('/').then(function() {
    assert.equal(find('h2#title').text(), 'Amber Pet');
  });
});


test('Should list all pets', function(assert) {
  visit('/pets').then(function() {
    assert.equal(find('a:contains("Bugs Bunny")').length, 1);
    assert.equal(find('a:contains("Fido")').length, 1);
    assert.equal(find('a:contains("Joel")').length, 1);
  });
});
