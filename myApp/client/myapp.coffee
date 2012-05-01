Contacts = new Meteor.Collection("contacts")

$.extend Template.contacts,
contacts: ->
	Contacts.find {}


