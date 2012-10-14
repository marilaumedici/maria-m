Feature: As a speaker I want to retrieve the key in case of losing it

Given the username "user0_username" with name "user0_name" exists



Scenario: Successful key recovery 

Given I am in the home page
And I press the "Forgot your password?"  button
When I am in the password recovery page
And I fill the camp "Enter your email address" with "user0_name"
And I fill the camp "Enter your UserName" with "user0_username"
And I press the "Send" button
Then I should see "We have sent your password to your email"