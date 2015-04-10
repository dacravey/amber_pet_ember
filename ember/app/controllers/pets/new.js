import Ember from "ember";

export default Ember.ArrayController.extend ({
  actions: {
    createPet: function() {
      var name = this.get("name");
      var breed = this.get("breed");
      var age = this.get("age");
      var description = this.get("description");
      var chipNumber = this.get("chip_number");
      var picture = this.get("picture");

      var pet = this.store.createRecord('pet', {
        name: name,
        breed: breed,
        age: age,
        description: description,
        chip_number: chipNumber,
        picture: picture
      });

      this.set('name', "");
      this.set('age', "");
      this.set('description', "");
      this.set('breed', "");
      this.set('chip_number', "");
      this.set('picture', "");
      pet.save();
      this.transitionToRoute('pets');

    }
  }
});
