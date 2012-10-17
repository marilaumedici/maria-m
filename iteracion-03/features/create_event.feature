Feature: As a speaker I want to create an event  to receive feedback

Scenario: Successful creation of an event

	Given I am in the main page
	When I press the "Create Event" button
	And I am in the create event page
	And I fill the camp "Name" with "event1"
	And I fill the camp "Date" with "31/10/2012"
	When I press the "Save" button
	Then I should see "The event event1 has been created!"
	And I should see "This is its link:"

Scenario: Failed creation of an event of the duplicated name

	Given I am in the main page
	When I press the "Create Event" button
	And I am in the create event page
	And I fill the camp "Name" with "taken_event1"
	And I fill the camp "Date" with "31/10/2012"
	When I press the "Save" button
	Then I should see "This name already exists!"
