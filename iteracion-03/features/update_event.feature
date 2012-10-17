Feature: As a speaker I want to update the event details in case there are changes

	Given the event "event1" with name "event1" and with date 		"31/10/2012" exists

Scenario: Successful update of the name of the event

	Given I am in the edit event page
	When I press the "Edit Name" button of the event "event1"
	And The "Edit Name" window appears
	And I fill the "Name" camp with "new_name"
	And I press the "Accept" button
	Then The new name of the event "event1" is now "new_name" 

Scenario: Successful update of the date of the event

	Given I am in the edit event page
	When I press the "Edit Name" button of the event "event1"
	And The "Edit Date" window appears
	And I fill the "Date" camp with "1/11/2012"
	And I press the "Accept" button
	Then The new date of the event "event1" is now "1/11/2012" 

Scenario: The event has already been rated and cannot be modified

	Given I am in the edit event page
	When I press the "Edit Name" button of the event "event1"
	And The "Edit Name" window appears
	And I fill the "Name" camp with "new_name"
	And I press the "Accept" button
	Then I should see "This event was already qualified, you can't edit"
