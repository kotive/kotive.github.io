Kotive Services
===============

Adding your service as a task in Kotive
---

1. Fork this repo
2. Duplicate the /sample/ folder and rename it to the name of your service, e.g. /awesomeapp/
3. Update /awesomeapp/config.json
4. Save your logo as /awesomeapp/icon.png (128 pixels by 128 pixels). __The name of the PNG has to be icon.png otherwise it won't be displayed.__
5. Rename /awesomeapp/sample_task.json to the name of your first task. Update the json to connect with your service. _You can add many services in this folder by creating a copy of this file, renaming it and updating its properties._
6. Add your service to services.json in the root folder. E.g.
    {
			"name": "Our Awesome App",
			"service": "awesomeapp"
		}
7. Submit your changes as a pull-request

Specifying 'fields'
---
Fields are displayed in the UI
```
{	
	"fields": [
		{
			"label": "Firstname",
			"properties": {
				"fieldType": "text"
			},
			"readonly": false,
			"required": true,
			"visible": true
		},
		{
			"label": "Gender",
			"properties": {
  			"fieldType": "radio",
				"choices": [
					{"key": "f", "value": "Female"},
					{"key": "m", "value": "Male"}
				],
				"default": "f",
				"optional": {
					"classes": "inline"
				}
			},
			"readonly": false,
			"required": true,
			"visible": true
		},
		{
			"label": "Gender",
			"properties": {
  			"fieldType": "select",
				"choices": ["Female", "Male"]
			},
			"readonly": false,
			"required": true,
			"visible": true
		}		
	]
}
```

Validating JSON files
---
Before commiting any changes make sure you validate your JSON file changes using the repo's tests.

Set up the required dependencies using npm

	npm install .

Then run the JSON lint validator
	
	npm test

If all tests pass the repo is clear of any JSON syntax errors.

Note
----
Testing should be improved to maybe do some logical checks on the confgurations being uploaded.

List of services
---
- Asana
- Basecamp
- Braintree
- Campaign monitor
- Clickatell
- Desk
- Email*
- Fogbugz
- Freshbooks
- Github
- Google docs
- Gmail
- Harvest
- HelloSign
- Hipchat
- Hubspot
- Intercom
- PDF*
- Phone*
- Mailchimp
- Mandrill
- Mixpanel
- Podio
- Sendgrid
- Slack
- SMS*
- Stripe
- Trello
- Twilio
- Twitter
- Webhook
- Zapier
