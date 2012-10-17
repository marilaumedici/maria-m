Feature: As an attendant I want rate the event to give feedback

Scenario: Successful rating of an event

	Given the event "event1"  exists
	Given I am in the rating page of "event1"
	And I select the any radio button
	And I press the "Send" button
	Then I should see "Your score was sent!!! Thanks!!!"
