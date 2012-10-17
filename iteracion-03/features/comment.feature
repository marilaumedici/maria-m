Feature: As an attendant I want comment my rating to give more detail of it

Scenario: Successful comment of a rating

	Given the event "event1"  exists
	Given I am in the rating page of "event1"
	And I select the any radio button
	And I fill the camp "Add a comment:" with "very infomative"
	And I press the "Send" button
	Then I should see "Your score was sent!!! Thanks!!!"
