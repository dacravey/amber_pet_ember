import Ember from "ember";

export default Ember.ArrayController.extend ({
  actions: {
    createFinding: function() {
      var address = this.get("address");
      var time = this.get("time");
      var date = this.get("date");

      var finding = this.store.createRecord('finding', {
        address: address,
        time: time,
        date: date
      });

      this.set('address', "");
      this.set('time', "");
      this.set('date', "");
      finding.save();
      this.transitionToRoute('pets');

    }
  }
});
