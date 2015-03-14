Feature: Admin Manage Widgets
	In order to Manage Widgets
	As a Admin user
	I want to add, modify and delete widgets

	Background:
		Given I'm an Admin user
		And I'm logged in as Admin

	Scenario: Add new Widget
		Given I'm on the new Widget page
		When I fill all the data needed
		Then I should see "Widget was successfully created."

	Scenario: Modify Widget
		Given There is at least one Widget		
		And I'm on the widget edit page
		When I modify any field on the form
		Then I should see "Widget was successfully modified."

	Scenario: Delete Widget
		Given There is at least one Widget		
		When I delete a Widget
		Then I should see "Widget was successfully deleted."

	Scenario: Fill config field with a valid JSON
		Given There is at least one Widget
		And I'm on the widget edit page
		When I fill the config field with a valid JSON
		Then I should see "Widget was successfully modified."

	Scenario: Fill config field with an invalid JSON
		Given There is at least one Widget
		And I'm on the widget edit page
		When I fill the config field with an invalid JSON
		Then I should see "Invalid JSON."