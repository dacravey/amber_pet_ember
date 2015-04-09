import Ember from "ember";

export default Ember.ArrayController.extend ({
  actions: {
    createPet: function() {
      var name = this.get("name");
      var breed = this.get("breed");
      var age = this.get("age");
      var description = this.get("description");
      var chipNumber = this.get("chip_number");
      var avatar = this.get("avatar");

      var pet = this.store.createRecord('pet', {
        name: name,
        breed: breed,
        age: age,
        description: description,
        chip_number: chipNumber,
        avatar: avatar
      });

      this.set('name', "");
      this.set('age', "");
      this.set('description', "");
      this.set('breed', "");
      this.set('chip_number', "");
      pet.save();
      this.transitionToRoute('pets');

    }
  }
});
