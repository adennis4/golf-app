@javascript
Feature: User Buys Product

  Scenario: 
    Given I am a non-signed in user
    When I land on the home page
    And I click "Buy!"
    Then I am taken to the shopping cart
