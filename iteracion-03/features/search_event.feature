Feature: As a speaker I want to find events to view their stats

Given the event "event1"  exists



Scenario: Successful search of an event

Given I am in the main page
And I fill the camp "Search event"  with "event1"
And I press the "Search" button
And I am in the search result page
Then I should see "event1"

Scenario: The event doesn't exist

Given I am in the main page
And I fill the camp "Search event"  with "event2"
And I press the "Search" button
And I am in the search result page
Then I should see "event2 doesn't exist"