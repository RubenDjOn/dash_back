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
		Then I should see a message telling me the widget was added successfuly

	Scenario: Modify Widget
		Given I'm on the widget edit page
		When I modify any field on the form
		Then I should see a message telling me the widget was succesfully modified

	Scenario: Delete Widget
		Given I'm on the Widget list
		When I press delete button of a Widget
		Then I should see a message telling me the widget was successfuly deleted

