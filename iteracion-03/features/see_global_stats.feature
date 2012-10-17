Feature: As a speaker I want to see global results of all my events to have a statistical

Scenario: Successful acces to global statistics

	Given The "event1" exists
	Given The "event2" exists
	Given I am in the main page
	And I press the "View global stats" button
	Then I am in the view global stats page
	And I should see "Global stats"
