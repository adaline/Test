google = Reference.create({name: 'Google'})
Reference.create({name: 'Yahoo!'})
Reference.create({name: 'MSN'})
Reference.create({name: 'Ask'})

Page.create(
	{
		title: 'Test page',
		body: '<p>This is a test</p>',
		author: 'Val',
		email: 'val666@gmail.com',
		reference_id: google.id
	}
)