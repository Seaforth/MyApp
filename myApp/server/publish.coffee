Contacts = new Meteor.Collection("contacts")

Meteor.publish "contacts", (page_size, start_record, last_record) ->

	if !last_record
		Contacts.find {},
			skip: start_record
			limit: page_size

	else
		start_record = Contacts.find().count() - page_size
		Contacts.find {},
			skip: start_record
			limit: page_size



