import Ember from 'ember';

export default Ember.Controller.extend ({
  authenticator: 'simple-auth-authenticator:devise',
  actions: {
    createUser: function() {
      var user = this.get('model');
      user.save();
      this.transitionToRoute('pets');
    }
  }
});
