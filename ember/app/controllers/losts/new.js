import Ember from "ember";

export default Ember.ArrayController.extend ({
  actions: {
    createLost: function() {
      var address = this.get("address");
      var time = this.get("time");
      var date = this.get("date");

      var lost = this.store.createRecord('lost', {
        address: address,
        time: time,
        date: date
      });

      this.set('address', "");
      this.set('time', "");
      this.set('date', "");
      lost.save();
      this.transitionToRoute('pets');

    }
  }
});
