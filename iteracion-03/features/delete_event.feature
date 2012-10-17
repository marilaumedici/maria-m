Feature: As a speaker I want delete events

Given the event "event1" exists



Scenario: Successful removal of one event

	Given the event "event1" exists
	Given I am in the view events page 
	When I press the "Delete Event" button of the event "event1"
	Then I shouln't see the "event1"
