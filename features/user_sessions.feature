Feature: User sessions
	In order to subscribe to widgets
	As a guest user
	I want to sign in
	And I can log in
	And I can log out

	Scenario: User Sign Up
		Given I'm on the Sign Up page
		And I'm an anonymous user		
		When I fill in the form on Sign Up page
		Then I should see the message "Welcome! You have signed up successfully."

	Scenario: User successful log in
		Given I'm on the Log in page
		And I'm an anonymous user
		And I'm registered on the web
		When I fill in the Log in form
		Then I should see the message "Signed in successfully."

	Scenario: User successful log out
		Given I'm registered on the web
		And I'm logged in as a regular user
		When I press the log out button
		Then I should see the message "Signed out successfully."