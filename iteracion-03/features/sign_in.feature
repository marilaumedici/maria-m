Feature: As a speaker I want to create an account to log in

Scenario: Successful creation of an account (happy path)

	Given I am in the home page
	When I press the "Sign in" button
	And I fill the camp "Name" with "user0"
	And I fill the camp "Username" with "user0_username"
	And I fill the camp "Email" with "user0@unq.com"
	And I fill the camp "Password" with "password"
	When I press the "Continue" button
	Then I should be in the "main" page 

Scenario: Failed creation of the duplicated user account

	Given I am in the home page
	And already exists "user0" account 
	When I press the "Sign in" button
	And I fill the camp "Name" with "user0"
	And I fill the camp "Username" with "user0_username"
	And I fill the camp "Email" with "user0@unq.com"
	And I fill the camp "Password" with "password"
	When I press the  "Continue" button
	Then I should see "The username already exists"
