# AmberPet
==========

## Contributors

* [Duane M. Moody](https://github.com/dmmoody)
* [Dex Fitch](https://github.com/dexterfitch)
* [Amy Michelle Johnson](https://github.com/amymichellejohnson)
* [Carli Martinez](https://github.com/csmartinez)
* [Monty Rohde](https://github.com/nathanarohde)
* [Debbie Cravey](https://github.com/dacravey)
*    and many thanks to:
* [Jake Kaad](https://github.com/JakeKaad)


AmberPet is a local pet registry that connects people who lose or find a missing animal companion and helps to facilitate a safe return home. It provides the ability to report an animal as lost or found, provides the user's contact info, location information, and a photo of the animal for purposes of reunions with lost pets. The app comes with opt-in Twilio functionality that will send a text message to alert users of new lost and found reports (if it is connected to a functioning Twilio account), much like the national Amber Alerts have done for missing children. Amber Pet uses the Google Maps API to display the reported animals within a given area.


## Requirements

* Rails
* Rails-CSRF
* Ember-CLI
* Ember-CLI-Pretender (for testing)
* Ember-CLI-Simple-Auth
* Ember-CLI-Simple_Auth-Devise
* Node & npm

NOTE: Twilio credentials should be stored in a .env file in order to keep them secure.

## Installation

Install AmberPet by first cloning the repository.

```
$ git clone https://github.com/dacravey/amber_pet_ember.git
```


To create database, open terminal and run

```
$ rake db:create
$ rake db:migrate
$ rake db:seed
```


## Run the App

- start postgresql
- in Rails directory, start Rails server:
```
rails s
```
- in Ember directory, start Ember server:
```
ember server --proxy http://localhost:3000
```
- open browser to localhost:4200



## Contribute

- Issue Tracker: github.com/dacravey/amber_pet_ember/issues
- Source Code: github.com/dacravey/amber_pet_ember

## Support
-------

If you are having issues, please let us know at: cinder.the.rogue@gmail.com

### Bug reports

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help with fixing the possible bug. We also welcome your help if you choose to fork and send a pull request.

https://github.com/dacravey/amber_pet_ember/issues

### License

MIT License. Copyright AmberPet 2015
