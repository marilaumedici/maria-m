Feature: As a speaker I want to Log in to use the applicarion

Given the username "user0_username" with password "password" exists



Scenario: Successful acces to the application

Given I am in the home page
And I fill the camp "Username" with "user0_username"
And I fill the camp "Password" with "password"
When I press the  "Log in" button
Then I should be in the "main" page

Scenario: Incorrect Password

Given I am in the home page
And I fill the camp "Username" with "user0_username"
And I fill the camp "Password" with "wrong_password"
When I press the "Log in" button
Then I should see "The password is incorrect"


Scenario: Incorrect Username

Given I am in the home page
And I fill the camp "Username" with "wrong_user0_username"
And I fill the camp "Password" with "password"
When I press the "Log in" button
Then I should see "The username is incorrect"