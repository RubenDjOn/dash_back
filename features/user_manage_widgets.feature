Feature: User Manage Widgets
    In order to Manage Widgets
    As a registered user
    I want to subscribe, unsubscribe and modify my widgets

    Background:
        Given I'm a registerd user
        And I'm logged in
        And There exists at least one Widget

    Scenario: Subscribe to a Widget        
        When I subscribe to one Widget
        Then I should see "Subscribed successfully"

    Scenario: Subscribe to a Widget        
        Given I'm subscribed to one Widget 
        When I unsubscribe to that Widget
        Then I should see "Unsubscribed successfully"

    Scenario: Edit one Subscribed Widget
        Given I'm subscribed to one Widget 
        And I'm on the edit Widget page        
        When I change the info of the Widget
        Then I should see "User Widget was successfully modified."

    Scenario: Show error when the config of a Widget is not a valid JSON
        Given I'm subscribed to one Widget 
        And I'm on the edit Widget page        
        When I change the config of the Widget with a invalid JSON
        Then I should see "Invalid JSON configuration."